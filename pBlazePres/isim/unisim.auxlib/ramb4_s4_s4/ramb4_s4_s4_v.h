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

#ifndef H_Unisim_ramb4_s4_s4_ramb4_s4_s4_v_H
#define H_Unisim_ramb4_s4_s4_ramb4_s4_s4_v_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Unisim_ramb4_s4_s4_ramb4_s4_s4_v: public HSim__s6 {
public:

  char *t556;
  char *t557;
    HSim__s4 PE[78];
    HSim__s1 SE[14];

    class gPE_3_ : public HSimGenValCtor
    {
    public: 
        gPE_3_();
    };

    class gPE_4_ : public HSimGenValCtor
    {
    public: 
        gPE_4_();
    };

    class gPE_5_ : public HSimGenValCtor
    {
    public: 
        gPE_5_();
    };

    class gPE_6_ : public HSimGenValCtor
    {
    public: 
        gPE_6_();
    };

    class gPE_7_ : public HSimGenValCtor
    {
    public: 
        gPE_7_();
    };

    class gPE_8_ : public HSimGenValCtor
    {
    public: 
        gPE_8_();
    };

    class gPE_9_ : public HSimGenValCtor
    {
    public: 
        gPE_9_();
    };

    class gPE_10_ : public HSimGenValCtor
    {
    public: 
        gPE_10_();
    };

    class gPE_11_ : public HSimGenValCtor
    {
    public: 
        gPE_11_();
    };

    class gPE_12_ : public HSimGenValCtor
    {
    public: 
        gPE_12_();
    };

    class gPE_13_ : public HSimGenValCtor
    {
    public: 
        gPE_13_();
    };

    class gPE_14_ : public HSimGenValCtor
    {
    public: 
        gPE_14_();
    };

    class gPE_15_ : public HSimGenValCtor
    {
    public: 
        gPE_15_();
    };

    class gPE_16_ : public HSimGenValCtor
    {
    public: 
        gPE_16_();
    };

    class gPE_17_ : public HSimGenValCtor
    {
    public: 
        gPE_17_();
    };

    class gPE_18_ : public HSimGenValCtor
    {
    public: 
        gPE_18_();
    };

    class gPE_19_ : public HSimGenValCtor
    {
    public: 
        gPE_19_();
    };

    class gPE_20_ : public HSimGenValCtor
    {
    public: 
        gPE_20_();
    };

    class gPE_27_ : public HSimGenValCtor
    {
    public: 
        gPE_27_();
    };

    class gPE_28_ : public HSimGenValCtor
    {
    public: 
        gPE_28_();
    };

    class gPE_29_ : public HSimGenValCtor
    {
    public: 
        gPE_29_();
    };

    class gPE_30_ : public HSimGenValCtor
    {
    public: 
        gPE_30_();
    };

    class gPE_37_ : public HSimGenValCtor
    {
    public: 
        gPE_37_();
    };

    class gPE_38_ : public HSimGenValCtor
    {
    public: 
        gPE_38_();
    };

    class gPE_39_ : public HSimGenValCtor
    {
    public: 
        gPE_39_();
    };

    class gPE_40_ : public HSimGenValCtor
    {
    public: 
        gPE_40_();
    };

    class gPE_47_ : public HSimGenValCtor
    {
    public: 
        gPE_47_();
    };

    class gPE_48_ : public HSimGenValCtor
    {
    public: 
        gPE_48_();
    };

    class gPE_49_ : public HSimGenValCtor
    {
    public: 
        gPE_49_();
    };

    class gPE_50_ : public HSimGenValCtor
    {
    public: 
        gPE_50_();
    };

  char *t558;
  char *t559;
HSim__s4 C1g;
HSim__s4 C1k;
HSim__s4 C1p;
HSim__s4 C1s;
HSim__s4 C1v;
  HSimArrayType Two_d_array_typebase;
  HSimArrayType Two_d_array_type;
/* subprogram name slv_to_two_D_array */
char *F1X(const char *C1U, const HSimConstraints *constrC1U);
    HSim__s1 SA[12];
    Unisim_ramb4_s4_s4_ramb4_s4_s4_v(const char * name);
    ~Unisim_ramb4_s4_s4_ramb4_s4_s4_v();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};

class Unisim_ramb4_s4_s4_ramb4_s4_s4_v_wiredelay: public HSim__s6 {
public:
  Unisim_ramb4_s4_s4_ramb4_s4_s4_v *Arch;
  Unisim_ramb4_s4_s4_ramb4_s4_s4_v_wiredelay(const char* name,
    Unisim_ramb4_s4_s4_ramb4_s4_s4_v *arch,
    HSimConfigDecl* cfg);
    void constructObject();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createUnisim_ramb4_s4_s4_ramb4_s4_s4_v(const char *name);

#endif
