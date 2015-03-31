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

void leap_initclass(t_eclass* c);

extern "C" void setup_leap0x2elibrary(void);
extern "C" void libpd_loadleap(void);
extern "C" void leap_setup(void);

#endif
