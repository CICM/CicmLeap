/*
 * Copyright (C) 2015 Pierre Guillot, CICM - Université Paris 8
 * All rights reserved.
 *
 * Website  : http://www.mshparisnord.fr/HoaLibrary/
 * Contacts : cicm.mshparisnord@gmail.com
 *
 * This library is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Library General Public License as published
 * by the Free Software Foundation; either version 2 of the License.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Library General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Library General Public License
 * along with this library; if not, write to the Free Software Foundation,
 * Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 *
 */

#include "../leap.library.h"

using namespace Leap;

typedef struct  _leap_simple
{
    t_eobj      f_box;
    t_outlet*   f_out_nhands;
    t_outlet*   f_out_hand1;
    t_outlet*   f_out_hand2;
    Controller* f_leap;
} t_leap_simple;

static t_eclass *leap_simple_class;

static void *leap_simple_new(t_symbol *s, int argc, t_atom *argv)
{
    t_leap_simple *x = (t_leap_simple *)eobj_new(leap_simple_class);
    if(x)
    {
        x->f_out_nhands = floatout(x);
        x->f_out_hand1  = listout(x);
        x->f_out_hand2  = listout(x);
        x->f_leap = new Controller();
        
        if(!x->f_leap)
        {
            eobj_free(x);
            return NULL;
        }
    }
    return (x);
}

static void leap_simple_free(t_leap_simple *x)
{
    delete x->f_leap;
    eobj_free(x);
}

static void leap_simple_bang(t_leap_simple *x)
{
    if(x->f_leap->isConnected())
    {
        HandList hands = x->f_leap->frame().hands();
        outlet_float(x->f_out_nhands, (t_float)hands.count());
        if(hands.count())
        {
            t_atom data[3];
            for(int i = 0; i < hands.count(); i++)
            {
                Hand hand = hands[i];
                
                atom_setfloat(data,   hand.stabilizedPalmPosition().x);
                atom_setfloat(data+1, hand.stabilizedPalmPosition().y);
                atom_setfloat(data+2, hand.palmPosition().z);
                
                if(hand.isValid() && hand.isLeft())
                {
                    outlet_list(x->f_out_hand1, NULL, 3, data);
                }
                
                else if (hand.isValid() && hand.isRight())
                {
                    outlet_list(x->f_out_hand2, NULL, 3, data);
                }
            }
        }
    }
}

extern "C" void setup_leap0x2esimple(void)
{
    t_eclass *c;
    
    c = eclass_new("leap.simple", (method)leap_simple_new, (method)leap_simple_free, (short)sizeof(t_leap_simple), 0L, A_GIMME, 0);
    leap_initclass(c);
    
    eclass_addmethod(c, (method)leap_simple_bang,   "bang", A_NULL, 0);
    
    eclass_register(CLASS_OBJ, c);
    leap_simple_class = c;
}

