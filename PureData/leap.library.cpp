/*
// Copyright (c) 2012-2014 Eliott Paris, Julien Colafrancesco & Pierre Guillot, CICM, Universite Paris 8.
// For information on usage and redistribution, and for a DISCLAIMER OF ALL
// WARRANTIES, see the file, "LICENSE.txt," in this distribution.
*/

#include "leap.library.h"

void leap_initclass(t_eclass* c)
{
    char help[MAXPDSTRING];
    sprintf(help, "helps/%s", c->c_class.c_name->s_name);
    class_sethelpsymbol((t_class *)c, gensym(help));
}

char leapersion[] = "Beta 0.1";
#ifdef PD_EXTENDED
char pdversion[] = "Pd-Extended";
#else
char pdversion[] = "Pd-Vanilla";
#endif

extern "C" void libpd_loadcream(void)
{
    setup_leap0x2elibrary();
}

extern "C" void leap_setup(void)
{
    setup_leap0x2elibrary();
}

extern "C" void setup_leap0x2elibrary(void)
{
	post("Cream Library by Pierre Guillot");
	post("© 2013 - 2015  CICM | Paris 8 University");
    post("Version %s (%s) for %s",leapersion, __DATE__, pdversion);
    post("");

    pd_library_add_folder("leap", "misc");
    pd_library_add_folder("leap", "helps");
}


