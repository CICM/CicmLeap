/*
 // Copyright (c) 2014 Eliott Paris, CICM, University of Paris 8.
 // For information on usage and redistribution, and for a DISCLAIMER OF ALL
 // WARRANTIES, see the file, "LICENSE.txt," in this distribution.
 */

#include "jit.common.h"
#include "max.jit.mop.h"

typedef struct _max_jit_leap 
{
	t_object		ob;
	void			*obex;
} t_max_jit_leap;

t_jit_err jit_leap_init(void); 

void *max_jit_leap_new(t_symbol *s, long argc, t_atom *argv);
void max_jit_leap_free(t_max_jit_leap *x);
void max_jit_leap_outputmatrix(t_max_jit_leap *x);

t_class *max_jit_leap_class;
		 	
int C74_EXPORT main(void)
{	
	t_class *q;
	
	jit_leap_init();
	
	t_class *c = class_new("cicm.jit.leap", (method)max_jit_leap_new, (method)max_jit_leap_free, (short)sizeof(t_max_jit_leap), 0L, A_GIMME, 0);
	
	long flags = MAX_JIT_MOP_FLAGS_OWN_OUTPUTMATRIX | MAX_JIT_MOP_FLAGS_OWN_JIT_MATRIX;

	max_jit_class_obex_setup(c, calcoffset(t_max_jit_leap,obex));
	q = (t_class*) jit_class_findbyname(gensym("jit_leap"));
    max_jit_class_mop_wrap(c, q, flags);
    max_jit_class_wrap_standard(c, q, 0);
	max_jit_class_addmethod_usurp_low(c, (method)max_jit_leap_outputmatrix, (char*)"outputmatrix");
	class_addmethod(c, (method)max_jit_mop_assist, "assist", A_CANT,0);
	
	class_register(CLASS_BOX, c);
	max_jit_leap_class = c;
}

void max_jit_leap_outputmatrix(t_max_jit_leap *x)
{
	long outputmode = max_jit_mop_getoutputmode(x);
	void *mop = max_jit_obex_adornment_get(x,_jit_sym_jit_mop);
	t_jit_err err;	
	
	if (outputmode && mop) //always output unless output mode is none
	{
		if (outputmode == 1)
		{
			if ((err=(t_jit_err)jit_object_method(max_jit_obex_jitob_get(x),	_jit_sym_matrix_calc, jit_object_method(mop,_jit_sym_getinputlist), jit_object_method(mop,_jit_sym_getoutputlist))))
			{
				jit_error_code(x,err); 
			}
			else
			{
				max_jit_mop_outputmatrix(x);
			}
		}
		else
		{
			max_jit_mop_outputmatrix(x);
		}
	}	
}

void max_jit_leap_free(t_max_jit_leap *x)
{
	max_jit_mop_free(x);
	jit_object_free(max_jit_obex_jitob_get(x));
	max_jit_object_free(x);
}

void *max_jit_leap_new(t_symbol *s, long argc, t_atom *argv)
{
	t_max_jit_leap *x;
	void *o;

	if ((x = (t_max_jit_leap *)max_jit_object_alloc(max_jit_leap_class,gensym("jit_leap"))))
	{
		if ((o = jit_object_new(gensym("jit_leap"))))
		{
			max_jit_mop_setup_simple(x,o,argc,argv);			
			max_jit_attr_args(x,argc,argv);
		}
		else
		{
			jit_object_error((t_object *)x, (char*)"jit.noise: could not allocate object");
			freeobject((t_object *) x);
			x = NULL;
		}
	}
	return (x);
}

