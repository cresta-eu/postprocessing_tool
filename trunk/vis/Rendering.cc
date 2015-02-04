// 
// Copyright (C) University College London, 2007-2012, all rights reserved.
// 
// This file is part of HemeLB and is CONFIDENTIAL. You may not work 
// with, install, use, duplicate, modify, redistribute or share this
// file, or any part thereof, other than as allowed by any agreement
// specifically made by you with University College London.
// 

#include "vis/Rendering.h"
#include "topology/NetworkTopology.h"

namespace hemelb
{
  namespace vis
  {
    Rendering::Rendering(PixelSet<BasicPixel>* glyph,
                         PixelSet<raytracer::RayDataNormal>* ray,
                         PixelSet<streaklinedrawer::StreakPixel>* streak,
                         PixelSet<cutplane::CutPlanePixel>* cut) :
                         glyphResult(glyph), rayResult(ray), streakResult(streak), cutPlaneResult(cut)
    {

    }

    void Rendering::ReleaseAll()
    {
      if (glyphResult != NULL)
      {
        glyphResult-> Release();
      }

      if (rayResult != NULL)
      {
        rayResult->Release();
      }

      if (streakResult != NULL)
      {
        streakResult-> Release();
      }
         
      if (cutPlaneResult != NULL)
       {
        cutPlaneResult-> Release();
      }
    }



    void Rendering::ReceivePixelCounts(net::Net* inNet, proc_t source)
    {
      if (glyphResult != NULL)
      {
        glyphResult->ReceiveQuantity(inNet, source);
      }
      if (rayResult != NULL)
      {
        rayResult->ReceiveQuantity(inNet, source);
      }
      if (streakResult != NULL)
      {
        streakResult->ReceiveQuantity(inNet, source);
      }
      if (cutPlaneResult != NULL)
      {
        cutPlaneResult->ReceiveQuantity(inNet, source);
      }
    }

    void Rendering::ReceivePixelData(net::Net* inNet, proc_t source)
    {
      if (glyphResult != NULL)
      {
        glyphResult->ReceivePixels(inNet, source);
      }
      if (rayResult != NULL)
      {
        rayResult->ReceivePixels(inNet, source);
      }
      if (streakResult != NULL)
      {
        streakResult->ReceivePixels(inNet, source);
      }
      if (cutPlaneResult != NULL)
      {
        cutPlaneResult->ReceivePixels(inNet, source);
      }
    }

    void Rendering::SendPixelCounts(net::Net* inNet, proc_t destination)
    {
      if (glyphResult != NULL)
      {
        glyphResult->SendQuantity(inNet, destination);
      }
      if (rayResult != NULL)
      {
        rayResult->SendQuantity(inNet, destination);
      }
      if (streakResult != NULL)
      {
        streakResult->SendQuantity(inNet, destination);
      }
      if (cutPlaneResult != NULL)
      {
        cutPlaneResult->SendQuantity(inNet, destination);
      }
    }

    void Rendering::SendPixelData(net::Net* inNet, proc_t destination)
    {
      if (glyphResult != NULL)
      {
        glyphResult->SendPixels(inNet, destination);
      }
      if (rayResult != NULL)
      {
        rayResult->SendPixels(inNet, destination);
      }
      if (streakResult != NULL)
      {
        streakResult->SendPixels(inNet, destination);
      }
      if (cutPlaneResult != NULL)
      {
        cutPlaneResult->SendPixels(inNet, destination);
      }
    }

    void Rendering::Combine(const Rendering& other)
    {
      if (glyphResult != NULL)
      {
        glyphResult->Combine(*other.glyphResult);
      }
      if (rayResult != NULL)
      {
        rayResult->Combine(*other.rayResult);
      }
      if (streakResult != NULL)
      {
        streakResult->Combine(*other.streakResult);
      }
      if (cutPlaneResult != NULL)
      {
        cutPlaneResult->Combine(*other.cutPlaneResult);
      }
    }

    void Rendering::PopulateResultSet(PixelSet<ResultPixel>* resultSet)
    {
      if (glyphResult != NULL)
      {
        AddPixelsToResultSet(resultSet, glyphResult->GetPixels());
      }

      if (rayResult != NULL)
      {
        AddPixelsToResultSet(resultSet, rayResult->GetPixels());
      }

      if (streakResult != NULL)
      {
        AddPixelsToResultSet(resultSet, streakResult->GetPixels());
      }

      if (cutPlaneResult != NULL)
      {
        AddPixelsToResultSet(resultSet, cutPlaneResult->GetPixels());
      }
    }
  }
}
