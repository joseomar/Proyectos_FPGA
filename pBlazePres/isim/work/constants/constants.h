////////////////////////////////////////////////////////////////////////////////
//   ____  ____   
//  /   /\/   /  
// /___/  \  /   
// \   \   \/  
//  \   \        Copyright (c) 2003-2004 Xilinx, Inc.
//  /   /        All Right Reserved. 
// /---/   /\     
// \   \  /  \  
//  \___\/\___\
////////////////////////////////////////////////////////////////////////////////

#ifndef H_Work_constants_H
#define H_Work_constants_H

#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


#include "ieee/std_logic_1164/std_logic_1164.h"

class Work_constants: public HSim__s6 {
public:
  HSimEnumType Tpicotype;
HSim__s4 Ei;
/* subprogram name ADDRSIZE */
int Gn();
/* subprogram name INSTSIZE */
int Gs();
/* subprogram name JADDRSIZE */
int Gw();
/* subprogram name JDATASIZE */
int GA();

public:

public:
  Work_constants(const HSimString &name);
  ~Work_constants();
};

extern Work_constants *WorkConstants;

#endif
