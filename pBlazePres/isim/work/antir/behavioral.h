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

#ifndef H_Work_antir_behavioral_H
#define H_Work_antir_behavioral_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_antir_behavioral: public HSim__s6 {
public:

    HSim__s4 PE[1];
    HSim__s1 SE[4];

  HSimEnumType Estado;
    HSim__s1 SA[5];
  int t632;
    Work_antir_behavioral(const char * name);
    ~Work_antir_behavioral();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_antir_behavioral(const char *name);

#endif
