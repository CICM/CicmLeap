/*
// Copyright (c) 2012-2014 Eliott Paris, Julien Colafrancesco & Pierre Guillot, CICM, Universite Paris 8.
// For information on usage and redistribution, and for a DISCLAIMER OF ALL
// WARRANTIES, see the file, "LICENSE.txt," in this distribution.
*/

#ifndef DEF_LEAP_LIBRARY
#define DEF_LEAP_LIBRARY

extern "C"
{
#include "./../ThirdParty/CicmWrapper/Sources/cicm_wrapper.h"
}
#include "./../ThirdParty/LeapSDK/include/Leap.h"

void leap_initclass(t_eclass* c);

extern "C" void libpd_loadleap(void);
extern "C" void leap_setup(void);

extern "C" void setup_leap0x2esimple(void);
extern "C" void setup_leap0x2egesture(void);
extern "C" void setup_leap0x2einfos(void);

static Leap::Controller LeapController;

static t_symbol* leap_sym_controler                     = gensym("leapcontroler");
static t_symbol* leap_sym_direction                     = gensym("direction");

static t_symbol* leap_sym_circle                        = gensym("circle");
static t_symbol* leap_sym_circleminradius               = gensym("circleminradius");
static t_symbol* leap_sym_circleminarc                  = gensym("circleminarc");

static t_symbol* leap_sym_swipe                         = gensym("swipe");
static t_symbol* leap_sym_swipeminlength                = gensym("swipeminlength");
static t_symbol* leap_sym_swipeminvelocity              = gensym("swipeminvelocity");

static t_symbol* leap_sym_keytap                        = gensym("keytap");
static t_symbol* leap_sym_keytapmindownvelocity         = gensym("keytapmindownvelocity");
static t_symbol* leap_sym_keytaphistoryseconds          = gensym("keytaphistoryseconds");
static t_symbol* leap_sym_keytapmindistance             = gensym("keytapmindistance");

static t_symbol* leap_sym_screentap                     = gensym("screentap");
static t_symbol* leap_sym_screentapminfowardvelocity    = gensym("screentapminfowardvelocity");
static t_symbol* leap_sym_screentaphistoryseconds       = gensym("screentaphistoryseconds");
static t_symbol* leap_sym_screentapmindistance          = gensym("screentapmindistance");


#endif
