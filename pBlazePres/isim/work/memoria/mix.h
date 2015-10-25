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

#ifndef H_Work_memoria_mix_H
#define H_Work_memoria_mix_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_memoria_mix: public HSim__s6 {
public:

  int t615;
  int t616;
    HSim__s1 SE[4];

    HSim__s1 SA[4];
  char *t617;
  char *t618;
  char *t619;
  char *t620;
  char t621;
    Work_memoria_mix(const char * name);
    ~Work_memoria_mix();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};

class Work_memoria_mixi20: public HSim__s6 {
public:
  Work_memoria_mix *Arch;
    HSim__s1 Sin;
  char *t622;
  char *t623;
  Work_memoria_mixi20(const char* name,
    Work_memoria_mix *arch,
    HSimConfigDecl* cfg);
    void constructObject();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_memoria_mix(const char *name);

#endif
