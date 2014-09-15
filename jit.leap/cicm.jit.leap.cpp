/*
 // Copyright (c) 2014 Eliott Paris, CICM, University of Paris 8.
 // For information on usage and redistribution, and for a DISCLAIMER OF ALL
 // WARRANTIES, see the file, "LICENSE.txt," in this distribution.
 */

/**
 @file      cicm.jit.leap.cpp
 @name      cicm.jit.leap
 @realname  cicm.jit.leap
 @type      object
 @module    cicm
 @author    CICM, Eliott Paris
 
 @digest
 Get the Leapmotion Image frame
 
 @description
 <o>cicm.jit.leap</o> Outputs the Leapmotion Image frame as a Jitter matrice.
 
 @discussion
 <o>cicm.jit.leap</o> Outputs the Leapmotion Image frame as a Jitter matrice.
 
 @category device, controller
 
 @seealso cicm.leap, cicm.simpleleap
 */

#include "jit.common.h"

#include "Leap.h"
#include <iostream>

#define _USE_MATH_DEFINES // To get definition of M_PI
#include <math.h>

#define jflone 	0x3f800000
#define jflmsk  0x007fffff

typedef struct _jit_leap_vecdata
{
	long			randlast;
} t_jit_leap_vecdata;

typedef struct _jit_leap 
{
	t_object		ob;
	
	// leapmotion
	Leap::Controller	*leap;
} t_jit_leap;

void *_jit_leap_class;

t_jit_err jit_leap_init(void); 
t_jit_leap *jit_leap_new(void);
void jit_leap_free(t_jit_leap *x);
t_jit_err jit_leap_getvecdata(t_jit_leap *x, t_jit_leap_vecdata *vd);
t_jit_err jit_leap_matrix_calc(t_jit_leap *x, void *inputs, void *outputs);

void jit_leap_calculate_ndim(t_jit_leap *x, t_jit_leap_vecdata *vecdata, long dimcount, long *dim, long planecount, t_jit_matrix_info *out_minfo, char *bop);

t_jit_err jit_leap_init(void) 
{	
	t_jit_object *mop;
	
	_jit_leap_class = jit_class_new("jit_leap",(method)jit_leap_new,(method)jit_leap_free,
		sizeof(t_jit_leap),0L); 

	//add mop
	mop = (t_jit_object*) jit_object_new(_jit_sym_jit_mop, 0, 1);
	jit_class_addadornment(_jit_leap_class, mop);
	
	//add methods
	jit_class_addmethod(_jit_leap_class, (method)jit_leap_matrix_calc, "matrix_calc", A_CANT, 0L);
	jit_class_register(_jit_leap_class);

	return JIT_ERR_NONE;
}

t_jit_err jit_leap_getvecdata(t_jit_leap *x, t_jit_leap_vecdata *vd)
{
	if (x && vd)
	{
		vd->randlast = jit_rand();
		return JIT_ERR_NONE;
	}
	else
		return JIT_ERR_INVALID_PTR;
}

t_jit_err jit_leap_matrix_calc(t_jit_leap *x, void *inputs, void *outputs)
{
	t_jit_err err = JIT_ERR_NONE;
	
	if (!x->leap || !x->leap->isConnected())
		return JIT_ERR_DATA_UNAVAILABLE;
	
	long out_savelock;
	t_jit_matrix_info out_minfo;
	char *out_bp;
	int i, j, n, pixel = 0, dimcount, planecount, dim[JIT_MATRIX_MAX_DIMCOUNT];
	void *out_matrix;
	
	char *op;
	t_jit_op_info out_opinfo;
	
	Leap::Frame frame = x->leap->frame();
	Leap::ImageList images = frame.images();
	Leap::Image image = images[0];
	const unsigned char* image_buffer = image.data();
	int brightness;
	
	out_matrix = jit_object_method(outputs, _jit_sym_getindex, 0);

	if (x && out_matrix)
	{
		out_savelock = (long) jit_object_method(out_matrix, _jit_sym_lock, 1);
		
		// fill out matrix info struct for output
		jit_object_method(out_matrix, _jit_sym_getinfo, &out_minfo);
		
		// get matrix data pointer
		jit_object_method(out_matrix, _jit_sym_getdata, &out_bp);
		
		// if data pointer is invalid, set error, and cleanup
		if (!out_bp)
		{
			err = JIT_ERR_INVALID_OUTPUT;
			goto out;
		}
		
		//get dimensions/planecount
		dimcount   = out_minfo.dimcount;
		planecount = out_minfo.planecount;			
		
		for (i = 0; i < dimcount; i++)
			dim[i] = out_minfo.dim[i];
		
		if (dimcount < 1)
			return JIT_ERR_GENERIC; //safety
		
		switch(dimcount)
		{
			case 1:
				dim[1] = 1;
			case 2:
			{
				//flatten planes - treat as single plane data for speed...ALWAYS
				n = dim[0];
				out_opinfo.stride = 1;
				n *= planecount;
				planecount = 1;
				
				if (out_minfo.type == _jit_sym_char)
				{
					long width  = dim[0];
					long height = dim[1];
					
					// for each row
					for (i = 0; i < height; i++)
					{
						// increment data pointers according to byte stride
						op = out_bp + i*out_minfo.dimstride[1];
						
						for (j = 0; j < width; j++)
						{
							if (image.isValid() && i < image.height() && j < image.width())
							{
								pixel++;
								brightness = (int)image_buffer[pixel];
								*op++ = 0;
								*op++ = brightness;
								*op++ = brightness;
								*op++ = brightness;
							}
							else
							{
								brightness = 0;
								*op++ = 0;
								*op++ = brightness;
								*op++ = brightness;
								*op++ = brightness;
							}
						}
					}
				}
				else if (out_minfo.type == _jit_sym_long)
				{
					for (i = 0; i < dim[1]; i++)
					{
						
					}
				}
				else if (out_minfo.type == _jit_sym_float32)
				{
					for (i = 0; i < dim[1]; i++)
					{
					}
				}
				else if (out_minfo.type==_jit_sym_float64)
				{
					for (i = 0; i < dim[1]; i++)
					{
					}
				}
				break;
			}
			default:
			{
				for	(i = 0; i < dim[dimcount-1]; i++)
				{
				}
			}
		}
	}
	else
	{
		return JIT_ERR_INVALID_PTR;
	}
	
out:
	jit_object_method(out_matrix, _jit_sym_lock, out_savelock);
	return err;
}

t_jit_leap *jit_leap_new(void)
{
	t_jit_leap *x = NULL;
		
	if ( (x=(t_jit_leap *)jit_object_alloc(_jit_leap_class)) )
	{
		x->leap = new Leap::Controller;
		Leap::Controller::PolicyFlag addImagePolicy = (Leap::Controller::PolicyFlag)(Leap::Controller::POLICY_IMAGES | x->leap->policyFlags());
		x->leap->setPolicyFlags(addImagePolicy);

	}
	return x;
}

void jit_leap_free(t_jit_leap *x)
{
	delete x->leap;
}
