// 
// Copyright (C) University College London, 2007-2012, all rights reserved.
// 
// This file is part of HemeLB and is CONFIDENTIAL. You may not work 
// with, install, use, duplicate, modify, redistribute or share this
// file, or any part thereof, other than as allowed by any agreement
// specifically made by you with University College London.
// 

#ifndef HEMELB_NET_BUILDINFO_H_IN
#define HEMELB_NET_BUILDINFO_H_IN
namespace hemelb
{
  namespace net
  {
    typedef CoalescePointPoint PointPointImpl ;
    typedef SeparatedGathers GathersImpl ;
    typedef SeparatedAllToAll AllToAllImpl ;
/* #undef HEMELB_SEPARATE_CONCERNS */
    #ifdef HEMELB_SEPARATE_CONCERNS
    static const bool separate_communications = true;
    #else
    static const bool separate_communications = false;
    #endif
  }
}
#endif // HEMELB_NET_BUILDINFO_H_IN
