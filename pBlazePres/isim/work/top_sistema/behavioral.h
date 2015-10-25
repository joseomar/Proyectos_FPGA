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

#ifndef H_Work_top_sistema_behavioral_H
#define H_Work_top_sistema_behavioral_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_top_sistema_behavioral: public HSim__s6 {
public:

    HSim__s1 SE[5];

    HSim__s1 SA[6];
HSimConstraints *c642;
  char *t643;
HSimConstraints *c644;
  char *t645;
HSimConstraints *c646;
  char *t647;
HSimConstraints *c648;
  char *t649;
    Work_top_sistema_behavioral(const char * name);
    ~Work_top_sistema_behavioral();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_top_sistema_behavioral(const char *name);

#endif
