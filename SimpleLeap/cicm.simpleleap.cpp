/*
// Copyright (c) 2014 Eliott Paris, CICM, University of Paris 8.
// For information on usage and redistribution, and for a DISCLAIMER OF ALL
// WARRANTIES, see the file, "LICENSE.txt," in this distribution.
*/

/**
 @file      cicm.simpleleap.cpp
 @name      cicm.simpleleap
 @realname  cicm.simpleleap
 @type      object
 @module    cicm
 @author    CICM, Eliott Paris
 
 @digest
 A simple and light leapmotion object
 
 @description
 <o>cicm.simpleleap</o> Reports the stabilized center position of the left and right palms in millimeters from the Leap Motion Controller origin.
 
 @discussion
 <o>cicm.simpleleap</o> Reports the stabilized center position of the left and right palms in millimeters from the Leap Motion Controller origin.
 
 @category device, controller
 
 @seealso cicm.leap
 */

#include "ext.h"
#include "ext_obex.h"
#include "ext_path.h"
#include "ext_common.h"
#include "jpatcher_api.h"
#include "jgraphics.h"
#include "jpatcher_syms.h"
#include "ext_dictionary.h"
#include "ext_globalsymbol.h"
#include "ext_parameter.h"

#include "Leap.h"

#include <iostream>

#define _USE_MATH_DEFINES // To get definition of M_PI
#include <math.h>

typedef struct _cicmleap 
{
	t_object	ob;
	int64_t		frame_id_save;
	
	// outlets :
	void		*out_hands;
	void		*out_simple_1;
	void		*out_simple_2;
	
	// leapmotion
	Leap::Controller	*leap;
} t_cicmleap;

void *cicmleap_new(t_symbol *s, long argc, t_atom *argv);
void cicmleap_free(t_cicmleap *x);
void cicmleap_assist(t_cicmleap *x, void *b, long m, long a, char *s);
void cicmleap_bang(t_cicmleap *x);
void outputHandData(t_cicmleap *x);

void *cicmleap_class;

int C74_EXPORT main(void)
{
	t_class *c = class_new("cicm.simpleleap", (method)cicmleap_new, (method)cicmleap_free, (long)sizeof(t_cicmleap), 0L, A_GIMME, 0);
	
	// @method bang @digest Reports frame datas
	// @description Reports frame datas
    class_addmethod(c, (method)cicmleap_bang, "bang", 0);
    class_addmethod(c, (method)cicmleap_assist, "assist", A_CANT, 0);
	
	class_register(CLASS_BOX, c);
	cicmleap_class = c;
	
	post("cicm.simpleleap (Leap v2.1.3) © 2014, CICM, Eliott Paris");

	return 0;
}

void cicmleap_assist(t_cicmleap *x, void *b, long m, long a, char *s)
{
	if (m == ASSIST_OUTLET)
	{
		switch (a)
		{
			case 0: sprintf(s, "list (left hand position)"); break;
			case 1: sprintf(s, "list (right hand position)"); break;
			case 2: sprintf(s, "list (infos)"); break;
			default: break;
		}
	}
	else
	{
		sprintf(s, "bang outputs frame infos");
	}
}

void cicmleap_free(t_cicmleap *x)
{
	delete x->leap;
}

void cicmleap_bang(t_cicmleap *x)
{
	outputHandData(x);
}

void outputHandData(t_cicmleap *x)
{
	t_atom* data = new t_atom[3];
	t_symbol *rootSym = NULL;
	Leap::HandList hands = x->leap->frame().hands();
	int numHands = hands.count();
	
	rootSym = gensym("nhands");
	atom_setlong(data, numHands);
	outlet_int(x->out_hands, numHands);
	
	if (numHands >= 1)
	{
		for (int i = 0; i < numHands; i++)
		{
			Leap::Hand hand = hands[i];
			
			atom_setfloat(data,   hand.stabilizedPalmPosition().x);
			atom_setfloat(data+1, hand.stabilizedPalmPosition().y);
			atom_setfloat(data+2, hand.palmPosition().z);
			
			if (hand.isValid() && hand.isLeft())
				outlet_list(x->out_simple_1, NULL, 3, data);
			
			else if (hand.isValid() && hand.isRight())
				outlet_list(x->out_simple_2, NULL, 3, data);
		}
	}
	
	delete [] data;
}

void *cicmleap_new(t_symbol *s, long argc, t_atom *argv)
{
	t_cicmleap *x = NULL;
    
	if ( (x = (t_cicmleap *)object_alloc((t_class *)cicmleap_class)) )
	{
		x->out_hands = outlet_new(x, NULL);
		x->out_simple_2 = outlet_new(x, NULL);
		x->out_simple_1 = outlet_new(x, NULL);
		
		x->leap = new Leap::Controller;
	}
	return (x);
}
