#ifndef HEMELB_VIS_CUTPLANE_CUTPLANE_H
#define HEMELB_VIS_CUTPLANE_CUTPLANE_H

#include <vector>
#include <map>

#include "constants.h"
#include "mpiInclude.h"

#include "debug/Debugger.h"
#include "geometry/LatticeData.h"
#include "topology/NetworkTopology.h"
#include "vis/PixelSet.h"
#include "vis/PixelSetStore.h"
#include "vis/Screen.h"
#include "vis/cutPlane/CutPlanePixel.h"
#include "vis/Viewpoint.h"
#include "vis/VisSettings.h"
#include "lb/MacroscopicPropertyCache.h"

namespace hemelb
{
  namespace vis
  {
    namespace cutplane
    {
      class CutPlane : public PixelSetStore<PixelSet<CutPlanePixel> >
      {
        public:
          // Constructor and destructor.
          CutPlane(const geometry::LatticeData& iLatDat,
                           const Screen& iScreen,
                           const Viewpoint& iViewpoint,
                           const VisSettings& iVisSettings,
                           const lb::MacroscopicPropertyCache& propertyCache);
          ~CutPlane();

          // Method to reset streakline drawer
          void Restart();

          // Drawing methods.
          PixelSet<CutPlanePixel>* Render();

        private:
          const geometry::LatticeData& latDat;
          const Screen& screen;
          const Viewpoint& viewpoint;
          const VisSettings& visSettings;
          const lb::MacroscopicPropertyCache& propertyCache;
      };
    }
  }
}

#endif // HEMELB_VIS_CUTPLANE_CUTPLANE_H
