// 
// Copyright (C) University College London, 2007-2012, all rights reserved.
// 
// This file is part of HemeLB and is CONFIDENTIAL. You may not work 
// with, install, use, duplicate, modify, redistribute or share this
// file, or any part thereof, other than as allowed by any agreement
// specifically made by you with University College London.
// 

#ifndef HEMELB_REPORTING_BUILDINFO_H_IN
#define HEMELB_REPORTING_BUILDINFO_H_IN
#include "reporting/Reportable.h"
namespace hemelb
{
  namespace reporting
  {
    static const std::string mercurial_revision_number="97fda15833cd+";
    static const std::string steering_lib="basic";
    static const std::string streaklines_on="OFF";
    static const std::string multimachine_on="OFF";
    static const std::string build_type="Debug";
    static const std::string optimisation="-O4";
    static const std::string use_sse3="OFF";
    static const std::string build_time="Tue Mar  4 17:29:16 CET 2014";
    static const std::string reading_group_size="5";
    static const std::string lattice_type="D3Q15";
    static const std::string kernel_type="LBGK";
    static const std::string wall_boundary_condition="SIMPLEBOUNCEBACK";
    static const std::string inlet_boundary_condition="NASHZEROTHORDERPRESSUREIOLET";
    static const std::string outlet_boundary_condition="NASHZEROTHORDERPRESSUREIOLET";
    static const std::string wall_inlet_boundary_condition="NASHZEROTHORDERPRESSURESBB";
    static const std::string wall_outlet_boundary_condition="NASHZEROTHORDERPRESSURESBB";
    static const std::string point_point_impl="Coalesce";
    static const std::string gathers_impl="Separated";
    static const std::string alltoall_impl="Separated";
    static const std::string separate_concerns="OFF";
  
    
    class BuildInfo : public Reportable {
      void Report(ctemplate::TemplateDictionary& dictionary){
        ctemplate::TemplateDictionary *build = dictionary.AddSectionDictionary("BUILD");
        build->SetValue("REVISION", mercurial_revision_number);
        build->SetValue("STEERING", steering_lib);
        build->SetValue("STREAKLINES", streaklines_on);
        build->SetValue("MULTIMACHINE", multimachine_on);
        build->SetValue("TYPE", build_type);
        build->SetValue("OPTIMISATION", optimisation);
        build->SetValue("USE_SSE3", use_sse3);
        build->SetValue("TIME", build_time);
        build->SetValue("READING_GROUP_SIZE", reading_group_size);
        build->SetValue("LATTICE_TYPE", lattice_type);
        build->SetValue("KERNEL_TYPE", kernel_type);
        build->SetValue("WALL_BOUNDARY_CONDITION", wall_boundary_condition);
        build->SetValue("INLET_BOUNDARY_CONDITION", inlet_boundary_condition);
        build->SetValue("OUTLET_BOUNDARY_CONDITION", outlet_boundary_condition);
        build->SetValue("WALL_INLET_BOUNDARY_CONDITION", wall_inlet_boundary_condition);
        build->SetValue("WALL_OUTLET_BOUNDARY_CONDITION", wall_outlet_boundary_condition);
        build->SetValue("SEPARATE_CONCERNS",separate_concerns);
        build->SetValue("ALLTOALL_IMPLEMENTATION",alltoall_impl);
        build->SetValue("GATHERS_IMPLEMENTATION",gathers_impl);
        build->SetValue("POINTPOINT_IMPLEMENTATION",point_point_impl);
      }
    };
  }
}
#endif // HEMELB_REPORTING_BUILDINFO_H_IN
