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

class GestureListener : public Leap::Listener
{
public:
    Leap::Gesture::Type m_type;
    Leap::CircleGesture m_circle;
    Leap::SwipeGesture  m_swipe;
    Leap::KeyTapGesture m_keytap;
    Leap::SwipeGesture  m_screentap;
    
    GestureListener() : m_type(Leap::Gesture::TYPE_INVALID)
    {
        ;
    }
    
    
    void onFrame(const Leap::Controller& ctrl) override
    {
        if(ctrl.isConnected())
        {
            Leap::GestureList gestures = ctrl.frame().gestures();
            /*
            if(gestures.count())
            {
                Gesture gesture = gestures[0];
                if(gestures[0].isValid())
                {
                    if(gestures[0].type() == Gesture::TYPE_CIRCLE)
                    {
                        ScreenTapGesture screentap = gestures[0];
                        t_atom data[4];
                        Leap::Vector vector = screentap.direction();
                        atom_setsym(data, gensym("direction"));
                        atom_setfloat(data+1, vector.yaw());
                        atom_setfloat(data+1, vector.roll());
                        atom_setfloat(data+1, vector.pitch());
                        outlet_anything(x->f_gesture, leap_sym_circle, 0, NULL);
                    }
                    else if(gesture.type() == Gesture::TYPE_SWIPE)
                    {
                        ;
                    }
                    else if(gesture.type() == Gesture::TYPE_KEY_TAP)
                    {
                        ;
                    }
                    else if(gesture.type() == Gesture::TYPE_SCREEN_TAP)
                    {
                        ;
                    }
                    else
                    {
                        ;
                    }
                }
            }*/
        }
    }
};

typedef struct  _leap_gesture
{
    t_eobj              f_box;
    t_outlet*           f_gesture;
    t_outlet*           f_parameters;
    GestureListener*    f_listener;
    void*               f_attr;
} t_leap_gesture;

static t_eclass *leap_gesture_class;

static void *leap_gesture_new(t_symbol *s, int argc, t_atom *argv)
{
    t_leap_gesture *x = (t_leap_gesture *)eobj_new(leap_gesture_class);
    if(x)
    {
        x->f_gesture    = anythingout(x);
        x->f_parameters = anythingout(x);
        ebox_attrprocess_viatoms(x, argc, argv);
    }
    return (x);
}

static void leap_gesture_free(t_leap_gesture *x)
{
    eobj_free(x);
}

static void leap_gesture_bang(t_leap_gesture *x)
{
    /*
    if(x->f_leap->isConnected())
    {
        Leap::GestureList gestures = x->f_leap->frame().gestures();
        if(gestures.count())
        {
            Gesture gesture = gestures[0];
            if(gestures[0].isValid())
            {
                if(gestures[0].type() == Gesture::TYPE_CIRCLE)
                {
                    ScreenTapGesture screentap = gestures[0];
                    t_atom data[4];
                    Leap::Vector vector = screentap.direction();
                    atom_setsym(data, gensym("direction"));
                    atom_setfloat(data+1, vector.yaw());
                    atom_setfloat(data+1, vector.roll());
                    atom_setfloat(data+1, vector.pitch());
                    outlet_anything(x->f_gesture, leap_sym_circle, 0, NULL);
                }
                else if(gesture.type() == Gesture::TYPE_SWIPE)
                {
                    ;
                }
                else if(gesture.type() == Gesture::TYPE_KEY_TAP)
                {
                    ;
                }
                else if(gesture.type() == Gesture::TYPE_SCREEN_TAP)
                {
                    ;
                }
                else
                {
                    ;
                }
            }
        }
    }
     */
}

static t_pd_err leap_gesture_attr_set(t_leap_gesture *x, t_eattr *attr, long argc, t_atom *argv)
{
    /*
    if(attr && argc && argv)
    {
        if(attr->name == leap_sym_circle)
        {
            x->f_leap->enableGesture(Gesture::TYPE_CIRCLE, (bool)atom_getfloat(argv));
        }
        else if(attr->name == leap_sym_swipe)
        {
            x->f_leap->enableGesture(Gesture::TYPE_SWIPE, (bool)atom_getfloat(argv));
        }
        else if(attr->name == leap_sym_keytap)
        {
            x->f_leap->enableGesture(Gesture::TYPE_KEY_TAP, (bool)atom_getfloat(argv));
        }
        else if(attr->name == leap_sym_screentap)
        {
            x->f_leap->enableGesture(Gesture::TYPE_SCREEN_TAP, (bool)atom_getfloat(argv));
        }
        else if(attr->name == leap_sym_circleminradius)
        {
            x->f_leap->config().setFloat("Gesture.Circle.MinRadius", atom_getfloat(argv));
            x->f_leap->config().save();
        }
        else if(attr->name == leap_sym_circleminarc)
        {
            x->f_leap->config().setFloat("Gesture.Circle.MinArc", atom_getfloat(argv));
            x->f_leap->config().save();
        }
        else if(attr->name == leap_sym_swipeminlength)
        {
            x->f_leap->config().setFloat("Gesture.Swipe.MinLength", atom_getfloat(argv));
            x->f_leap->config().save();
        }
        else if(attr->name == leap_sym_swipeminvelocity)
        {
            x->f_leap->config().setFloat("Gesture.Swipe.MinVelocity", atom_getfloat(argv));
            x->f_leap->config().save();
        }
        else if(attr->name == leap_sym_keytapmindownvelocity)
        {
            x->f_leap->config().setFloat("Gesture.KeyTap.MinDownVelocity", atom_getfloat(argv));
            x->f_leap->config().save();
        }
        else if(attr->name == leap_sym_keytaphistoryseconds)
        {
            x->f_leap->config().setFloat("Gesture.KeyTap.HistorySeconds", atom_getfloat(argv));
            x->f_leap->config().save();
        }
        else if(attr->name == leap_sym_keytapmindistance)
        {
            x->f_leap->config().setFloat("Gesture.KeyTap.MinDistance", atom_getfloat(argv));
            x->f_leap->config().save();
        }
        else if(attr->name == leap_sym_screentapminfowardvelocity)
        {
            x->f_leap->config().setFloat("Gesture.ScreenTap.MinForwardVelocity", atom_getfloat(argv));
            x->f_leap->config().save();
        }
        else if(attr->name == leap_sym_screentaphistoryseconds)
        {
            x->f_leap->config().setFloat("Gesture.ScreenTap.HistorySeconds", atom_getfloat(argv));
            x->f_leap->config().save();
        }
        else if(attr->name == leap_sym_screentapmindistance)
        {
            x->f_leap->config().setFloat("Gesture.ScreenTap.MinDistance", atom_getfloat(argv));
            x->f_leap->config().save();
        }
        
    }
    return 0;
     */
}

extern "C" void setup_leap0x2egesture(void)
{
    t_eclass *c;
    
    c = eclass_new("leap.gesture", (method)leap_gesture_new, (method)leap_gesture_free, (short)sizeof(t_leap_gesture), 0L, A_GIMME, 0);
    leap_initclass(c);
    
    eclass_addmethod(c, (method)leap_gesture_bang,   "bang",            A_NULL, 0);
    
    CLASS_ATTR_LONG             (c, "circle", 0, t_leap_gesture, f_attr);
    CLASS_ATTR_CATEGORY			(c, "circle", 0, "Circle");
    CLASS_ATTR_LABEL            (c, "circle", 0, "Circle enable");
    CLASS_ATTR_ACCESSORS		(c, "circle", NULL, leap_gesture_attr_set);
    CLASS_ATTR_DEFAULT          (c, "circle", 0, "1");
    CLASS_ATTR_STYLE            (c, "circle", 0, "onoff");
    CLASS_ATTR_SAVE             (c, "circle", 0);
    
    CLASS_ATTR_FLOAT            (c, "circleminradius", 0, t_leap_gesture, f_attr);
    CLASS_ATTR_CATEGORY			(c, "circleminradius", 0, "Circle");
    CLASS_ATTR_LABEL            (c, "circleminradius", 0, "Minimum circle radius");
    CLASS_ATTR_ACCESSORS		(c, "circleminradius", NULL, leap_gesture_attr_set);
    CLASS_ATTR_DEFAULT          (c, "circleminradius", 0, "5.f");
    CLASS_ATTR_STYLE            (c, "circleminradius", 0, "number");
    CLASS_ATTR_SAVE             (c, "circleminradius", 0);
    
    CLASS_ATTR_FLOAT            (c, "circleminarc", 0, t_leap_gesture, f_attr);
    CLASS_ATTR_CATEGORY			(c, "circleminarc", 0, "Circle");
    CLASS_ATTR_LABEL            (c, "circleminarc", 0, "Minimum circle arc");
    CLASS_ATTR_ACCESSORS		(c, "circleminarc", NULL, leap_gesture_attr_set);
    CLASS_ATTR_DEFAULT          (c, "circleminarc", 0, "4.712388f");
    CLASS_ATTR_STYLE            (c, "circleminarc", 0, "number");
    CLASS_ATTR_SAVE             (c, "circleminarc", 0);
    
    CLASS_ATTR_LONG             (c, "swipe", 0, t_leap_gesture, f_attr);
    CLASS_ATTR_CATEGORY			(c, "swipe", 0, "Swipe");
    CLASS_ATTR_LABEL            (c, "swipe", 0, "Swipe enable");
    CLASS_ATTR_ACCESSORS		(c, "swipe", NULL, leap_gesture_attr_set);
    CLASS_ATTR_DEFAULT          (c, "swipe", 0, "1");
    CLASS_ATTR_STYLE            (c, "swipe", 0, "onoff");
    CLASS_ATTR_SAVE             (c, "swipe", 0);
    
    CLASS_ATTR_FLOAT            (c, "swipeminlength", 0, t_leap_gesture, f_attr);
    CLASS_ATTR_CATEGORY			(c, "swipeminlength", 0, "Swipe");
    CLASS_ATTR_LABEL            (c, "swipeminlength", 0, "Minimum swipe length");
    CLASS_ATTR_ACCESSORS		(c, "swipeminlength", NULL, leap_gesture_attr_set);
    CLASS_ATTR_DEFAULT          (c, "swipeminlength", 0, "150.f");
    CLASS_ATTR_STYLE            (c, "swipeminlength", 0, "number");
    CLASS_ATTR_SAVE             (c, "swipeminlength", 0);
    
    CLASS_ATTR_FLOAT            (c, "swipeminvelocity", 0, t_leap_gesture, f_attr);
    CLASS_ATTR_CATEGORY			(c, "swipeminvelocity", 0, "Swipe");
    CLASS_ATTR_LABEL            (c, "swipeminvelocity", 0, "Minimum swipe velocity");
    CLASS_ATTR_ACCESSORS		(c, "swipeminvelocity", NULL, leap_gesture_attr_set);
    CLASS_ATTR_DEFAULT          (c, "swipeminvelocity", 0, "1000.f");
    CLASS_ATTR_STYLE            (c, "swipeminvelocity", 0, "number");
    CLASS_ATTR_SAVE             (c, "swipeminvelocity", 0);
    
    CLASS_ATTR_LONG             (c, "keytap", 0, t_leap_gesture, f_attr);
    CLASS_ATTR_CATEGORY			(c, "keytap", 0, "Key tap");
    CLASS_ATTR_LABEL            (c, "keytap", 0, "Key tap enable");
    CLASS_ATTR_ACCESSORS		(c, "keytap", NULL, leap_gesture_attr_set);
    CLASS_ATTR_DEFAULT          (c, "keytap", 0, "1");
    CLASS_ATTR_STYLE            (c, "keytap", 0, "onoff");
    CLASS_ATTR_SAVE             (c, "keytap", 0);
    
    CLASS_ATTR_FLOAT            (c, "keytapmindownvelocity", 0, t_leap_gesture, f_attr);
    CLASS_ATTR_CATEGORY			(c, "keytapmindownvelocity", 0, "Key tap");
    CLASS_ATTR_LABEL            (c, "keytapmindownvelocity", 0, "Minimum key tap down velocity");
    CLASS_ATTR_ACCESSORS		(c, "keytapmindownvelocity", NULL, leap_gesture_attr_set);
    CLASS_ATTR_DEFAULT          (c, "keytapmindownvelocity", 0, "50.f");
    CLASS_ATTR_STYLE            (c, "keytapmindownvelocity", 0, "number");
    CLASS_ATTR_SAVE             (c, "keytapmindownvelocity", 0);
    
    CLASS_ATTR_FLOAT            (c, "keytaphistoryseconds", 0, t_leap_gesture, f_attr);
    CLASS_ATTR_CATEGORY			(c, "keytaphistoryseconds", 0, "Key tap");
    CLASS_ATTR_LABEL            (c, "keytaphistoryseconds", 0, "Key tap history seconds");
    CLASS_ATTR_ACCESSORS		(c, "keytaphistoryseconds", NULL, leap_gesture_attr_set);
    CLASS_ATTR_DEFAULT          (c, "keytaphistoryseconds", 0, "0.1f");
    CLASS_ATTR_STYLE            (c, "keytaphistoryseconds", 0, "number");
    CLASS_ATTR_SAVE             (c, "keytaphistoryseconds", 0);
    
    CLASS_ATTR_FLOAT            (c, "keytapmindistance", 0, t_leap_gesture, f_attr);
    CLASS_ATTR_CATEGORY			(c, "keytapmindistance", 0, "Key tap");
    CLASS_ATTR_LABEL            (c, "keytapmindistance", 0, "Minimum key tap distance");
    CLASS_ATTR_ACCESSORS		(c, "keytapmindistance", NULL, leap_gesture_attr_set);
    CLASS_ATTR_DEFAULT          (c, "keytapmindistance", 0, "3.f");
    CLASS_ATTR_STYLE            (c, "keytapmindistance", 0, "number");
    CLASS_ATTR_SAVE             (c, "keytapmindistance", 0);
    
    CLASS_ATTR_LONG             (c, "screentap", 0, t_leap_gesture, f_attr);
    CLASS_ATTR_CATEGORY			(c, "screentap", 0, "Screen tap");
    CLASS_ATTR_LABEL            (c, "screentap", 0, "Screen tap enable");
    CLASS_ATTR_ACCESSORS		(c, "screentap", NULL, leap_gesture_attr_set);
    CLASS_ATTR_DEFAULT          (c, "screentap", 0, "1");
    CLASS_ATTR_STYLE            (c, "screentap", 0, "onoff");
    CLASS_ATTR_SAVE             (c, "screentap", 0);
    
    CLASS_ATTR_FLOAT            (c, "screentapminfowardvelocity", 0, t_leap_gesture, f_attr);
    CLASS_ATTR_CATEGORY			(c, "screentapminfowardvelocity", 0, "Screen tap");
    CLASS_ATTR_LABEL            (c, "screentapminfowardvelocity", 0, "Minimum screen tap foward velocity");
    CLASS_ATTR_ACCESSORS		(c, "screentapminfowardvelocity", NULL, leap_gesture_attr_set);
    CLASS_ATTR_DEFAULT          (c, "screentapminfowardvelocity", 0, "50.f");
    CLASS_ATTR_STYLE            (c, "screentapminfowardvelocity", 0, "number");
    CLASS_ATTR_SAVE             (c, "screentapminfowardvelocity", 0);
    
    CLASS_ATTR_FLOAT            (c, "screentaphistoryseconds", 0, t_leap_gesture, f_attr);
    CLASS_ATTR_CATEGORY			(c, "screentaphistoryseconds", 0, "Screen tap");
    CLASS_ATTR_LABEL            (c, "screentaphistoryseconds", 0, "Screen tap history seconds");
    CLASS_ATTR_ACCESSORS		(c, "screentaphistoryseconds", NULL, leap_gesture_attr_set);
    CLASS_ATTR_DEFAULT          (c, "screentaphistoryseconds", 0, "0.1f");
    CLASS_ATTR_STYLE            (c, "screentaphistoryseconds", 0, "number");
    CLASS_ATTR_SAVE             (c, "screentaphistoryseconds", 0);
    
    CLASS_ATTR_FLOAT            (c, "screentapmindistance", 0, t_leap_gesture, f_attr);
    CLASS_ATTR_CATEGORY			(c, "screentapmindistance", 0, "Screen tap");
    CLASS_ATTR_LABEL            (c, "screentapmindistance", 0, "Minimum screen tap distance");
    CLASS_ATTR_ACCESSORS		(c, "screentapmindistance", NULL, leap_gesture_attr_set);
    CLASS_ATTR_DEFAULT          (c, "screentapmindistance", 0, "5.f");
    CLASS_ATTR_STYLE            (c, "screentapmindistance", 0, "number");
    CLASS_ATTR_SAVE             (c, "screentapmindistance", 0);
    
    eclass_register(CLASS_OBJ, c);
    leap_gesture_class = c;
}

