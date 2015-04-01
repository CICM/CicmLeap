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

class InfosListener : public Leap::Listener
{
private:
    t_pd* m_object;
public:
    InfosListener(void *x) : m_object((t_pd *)x)
    {
        ;
    }
    
    ~InfosListener()
    {
        ;
    }
    
    void onConnect(const Leap::Controller& ctrl) override
    {
         pd_bang(m_object);
    }
    
    void onDisconnect(const Leap::Controller& ctrl) override
    {
         pd_bang(m_object);
    }
    
    void onServiceConnect(const Leap::Controller& ctrl) override
    {
         pd_bang(m_object);
    }
    
    void onServiceDisconnect(const Leap::Controller& ctrl) override
    {
         pd_bang(m_object);
    }
    
    void onDeviceChange(const Leap::Controller& ctrl) override
    {
        pd_bang(m_object);
    }
    
};

typedef struct  _leap_infos
{
    t_eobj              f_box;
    InfosListener*      f_listener;
    t_outlet*           f_state;
    t_outlet*           f_devices;
} t_leap_infos;


static t_eclass *leap_infos_class;

static void leap_infos_bang(t_leap_infos *x)
{
    if(LeapController.isConnected())
    {
        outlet_float(x->f_state, 1.f);
    }
    else
    {
        outlet_float(x->f_state, 0.f);
    }
}

static void leap_infos_devices(t_leap_infos *x)
{
    if(LeapController.isConnected())
    {
        Leap::DeviceList list = LeapController.devices();
        t_atom* argv = (t_atom *)malloc(list.count()*sizeof(t_atom));
        for(int i = 0; i < list.count(); i++)
        {
            Leap::Device dev = list[i];
            atom_setsym(argv+i, gensym(dev.serialNumber().c_str()));
        }
        outlet_list(x->f_devices, &s_list, list.count(), argv);
        free(argv);
    }
}

static void *leap_infos_new(t_symbol *s, int argc, t_atom *argv)
{
    t_leap_infos *x = (t_leap_infos *)eobj_new(leap_infos_class);
    if(x)
    {
        x->f_state    = floatout(x);
        x->f_devices  = listout(x);
        x->f_listener = new InfosListener(x);
        LeapController.addListener(*x->f_listener);
    }
    return (x);
}

static void leap_infos_free(t_leap_infos *x)
{
    LeapController.removeListener(*x->f_listener);
    delete x->f_listener;
    eobj_free(x);
}

extern "C" void setup_leap0x2einfos(void)
{
    t_eclass *c;
    
    c = eclass_new("leap.infos", (method)leap_infos_new, (method)leap_infos_free, (short)sizeof(t_leap_infos), 0L, A_GIMME, 0);
    leap_initclass(c);
    eclass_addmethod(c, (method)leap_infos_bang,   "bang",            A_NULL, 0);
    eclass_addmethod(c, (method)leap_infos_devices,"getdevices",      A_NULL, 0);
    eclass_register(CLASS_OBJ, c);
    leap_infos_class = c;
}

