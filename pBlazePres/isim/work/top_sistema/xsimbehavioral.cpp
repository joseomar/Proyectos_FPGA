static const char * HSimCopyRightNotice = "Copyright 2004-2005, Xilinx Inc. All rights reserved.";
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif
#include "/opt/Xilinx9.2i/vhdl/hdp/lin/ieee/std_logic_1164/std_logic_1164.h"
#include "/opt/Xilinx9.2i/vhdl/hdp/lin/std/textio/textio.h"
#include "/opt/Xilinx9.2i/vhdl/hdp/lin/ieee/vital_timing/vital_timing.h"
#include "/opt/Xilinx9.2i/vhdl/hdp/lin/ieee/vital_primitives/vital_primitives.h"
#include "/opt/Xilinx9.2i/vhdl/hdp/lin/ieee/std_logic_arith/std_logic_arith.h"
#include "isim/unisim.auxlib/vpkg/vpkg.h"
#include "/opt/Xilinx9.2i/vhdl/hdp/lin/ieee/std_logic_unsigned/std_logic_unsigned.h"
#include "isim/unisim.auxlib/vcomponents/vcomponents.h"
#include "isim/work/constants/constants.h"

class _top : public HSim__s6 {
public:
    _top() : HSim__s6(false, "_top", "_top", 0, 0, HSim::VhdlDesignEntity) {}
    HSimConfigDecl * topModuleInstantiate() {
        HSimConfigDecl * cfgvh = 0;
        cfgvh = new HSimConfigDecl("default");
        (*cfgvh).registerFuseLibList("unisims_ver");

        HSim__s6 * topvh = 0;
        extern HSim__s6 * createWork_top_sistema_behavioral(const char*);
        topvh = createWork_top_sistema_behavioral("Top_Sistema");
        topvh->constructPorts();
        topvh->checkTopLevelPortsConstrainted();
        topvh->vhdlArchImplement();
        topvh->architectureInstantiate(cfgvh);
        addChild(topvh);
        return cfgvh;
}
};

main(int argc, char **argv) {
  HSimDesign::initDesign();
  globalKernel->getOptions(argc,argv);
  HSim__s6 * _top_i = 0;
  try {
    IeeeStd_logic_1164=new Ieee_std_logic_1164("std_logic_1164");
    StdTextio=new Std_textio("TEXTIO");
    IeeeVital_timing=new Ieee_vital_timing("VITAL_Timing");
    IeeeVital_primitives=new Ieee_vital_primitives("VITAL_Primitives");
    IeeeStd_logic_arith=new Ieee_std_logic_arith("std_logic_arith");
    UnisimVpkg=new Unisim_vpkg("VPKG");
    IeeeStd_logic_unsigned=new Ieee_std_logic_unsigned("STD_LOGIC_UNSIGNED");
    UnisimVcomponents=new Unisim_vcomponents("VCOMPONENTS");
    WorkConstants=new Work_constants("constants");
    HSimConfigDecl *cfg;
 _top_i = new _top();
  cfg =  _top_i->topModuleInstantiate();
    return globalKernel->runTcl(cfg, _top_i, "_top", argc, argv);
  }
  catch (HSimError& msg){
    try {
      globalKernel->error(msg.ErrMsg);
      return 1;
    }
    catch(...) {}
      return 1;
  }
  catch (...){
    globalKernel->fatalError();
    return 1;
  }
}
