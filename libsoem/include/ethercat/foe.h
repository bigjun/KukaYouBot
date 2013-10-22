/*
 * Simple Open EtherCAT Master Library 
 *
 * File    : ethercatfoe.h
 * Version : 1.3.0
 * Date    : 24-02-2013
 * Copyright (C) 2005-2013 Speciaal Machinefabriek Ketels v.o.f.
 * Copyright (C) 2005-2013 Arthur Ketels
 * Copyright (C) 2008-2009 TU/e Technische Universiteit Eindhoven 
 *
 * SOEM is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License version 2 as published by the Free
 * Software Foundation.
 *
 * SOEM is distributed in the hope that it will be useful, but WITHOUT ANY
 * WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
 * for more details.
 *
 * As a special exception, if other files instantiate templates or use macros
 * or inline functions from this file, or you compile this file and link it
 * with other works to produce a work based on this file, this file does not
 * by itself cause the resulting work to be covered by the GNU General Public
 * License. However the source code for this file must still be made available
 * in accordance with section (3) of the GNU General Public License.
 *
 * This exception does not invalidate any other reasons why a work based on
 * this file might be covered by the GNU General Public License.
 *
 * The EtherCAT Technology, the trade name and logo “EtherCAT” are the intellectual
 * property of, and protected by Beckhoff Automation GmbH. You can use SOEM for
 * the sole purpose of creating, using and/or selling or otherwise distributing
 * an EtherCAT network master provided that an EtherCAT Master License is obtained
 * from Beckhoff Automation GmbH.
 *
 * In case you did not receive a copy of the EtherCAT Master License along with
 * SOEM write to Beckhoff Automation GmbH, Eiserstraße 5, D-33415 Verl, Germany
 * (www.beckhoff.com).
 */

/** \file 
 * \brief
 * Headerfile for ethercatfoe.c 
 */

#ifndef ETHERCAT_FOE_H
#define ETHERCAT_FOE_H

#ifdef __cplusplus
extern "C"
{
#endif

#ifdef EC_VER1
int ec_FOEdefinehook(void *hook);
int ec_FOEread(uint16 slave, char *filename, uint32 password, int *psize, void *p, int timeout);
int ec_FOEwrite(uint16 slave, char *filename, uint32 password, int psize, void *p, int timeout);
#endif

int ecx_FOEdefinehook(ecx_contextt *context, void *hook);
int ecx_FOEread(ecx_contextt *context, uint16 slave, char *filename, uint32 password, int *psize, void *p, int timeout);
int ecx_FOEwrite(ecx_contextt *context, uint16 slave, char *filename, uint32 password, int psize, void *p, int timeout);

#ifdef __cplusplus
}
#endif

#endif /* ETHERCAT_FOE_H */

