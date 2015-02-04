#include <cmath>
#include <vector>
#include <iostream>


#include "vis/cutPlane/CutPlane.h"
#include "util/utilityFunctions.h"
#include "vis/Control.h"

namespace hemelb
{
  namespace vis
  {
    namespace cutplane
    {
      // Constructor, populating fields from lattice data objects.
      CutPlane::CutPlane(const geometry::LatticeData& iLatDat,
                                         const Screen& iScreen,
                                         const Viewpoint& iViewpoint,
                                         const VisSettings& iVisSettings,
                                         const lb::MacroscopicPropertyCache& propertyCache) :
          latDat(iLatDat), screen(iScreen), viewpoint(iViewpoint), visSettings(iVisSettings), propertyCache(propertyCache)
      {

      }

      // Destructor
      CutPlane::~CutPlane()
      {
      }

 
      PixelSet<CutPlanePixel>* CutPlane::Render()
      {

        PixelSet<CutPlanePixel>* set = GetUnusedPixelSet();
        set->Clear();
   	//CutPlanePixel pixRed(10, 20, -1e6);

/*
	set->AddPixel(pixRed);
	return set;
*/
	// along cylinder
	//util::Vector3D<float> planeBase(-2, 7, -50);
	//util::Vector3D<float> planeU(20, 0, 0);
	//util::Vector3D<float> planeV(0, 0, 400);


/*
	// across
  	util::Vector3D<float> planeBase(0, 0, 150);
  	util::Vector3D<float> planeU(24, 0, 0);
  	util::Vector3D<float> planeV(0, 24, 0);

*/

        util::Vector3D<float> planeBase(-2, 7, -50);
	util::Vector3D<float> planeU(20, 0, 0);
	util::Vector3D<float> planeV(0, 0, 400);





    //    util::Vector3D<float> planeBase(0, 0, 350);
	//util::Vector3D<float> planeU(100, 0, 0);
	//util::Vector3D<float> planeV(0, 100, 0);

	util::Vector3D<float> planeNormal(planeU[1]*planeV[2] - planeU[2]*planeV[1], planeU[2]*planeV[0] - planeU[0]*planeV[2], planeU[0]*planeV[1] - planeU[1]*planeV[0]);
	planeNormal.Normalise();

        int blockSize = latDat.GetBlockSize();

        int pixels_x = screen.GetPixelsX();
        int pixels_y = screen.GetPixelsY();
        printf("CUTPLANE RESOLUTION %i %i \n",pixels_x,pixels_y);
/*
 	if (topology::NetworkTopology::Instance()->GetLocalRank() == 1) {
		for (unsigned int y = 0 ; y < 100; y++) {
			for (unsigned int x = 0 ; x < 100; x++) {
				CutPlanePixel pix(x,y, -1e6);
				set->AddPixel(pix);
			}
		}
	}

	if (topology::NetworkTopology::Instance()->GetLocalRank() == 0) {
			CutPlanePixel pix(20,20, 1e6);
			set->AddPixel(pix);
	}
	return set;
*/




	for (unsigned int y = 0 ; y < pixels_x; y++) {
		for (unsigned int x = 0 ; x < pixels_y; x++) {
	       		CutPlanePixel pixRed(x, y, 1e6);
	       		CutPlanePixel pixBlue(x, y, -1e6);

			if ((x == 0 || x == pixels_x-1 || y ==0 || y == pixels_y-1))
				set->AddPixel(pixRed);

			if (x >= pixels_x || y >= pixels_y)
				continue;

			util::Vector3D<float> p = planeBase + planeU * (x / (float) pixels_x) + planeV * (y / (float) pixels_x);

			util::Vector3D<site_t> intP((int)p[0], (int)p[1], (int)p[2]);

			geometry::BlockTraverser blockTraverser(latDat);

			if (p[0] < 0 || p[0] > blockSize * blockTraverser.GetXCount() ||
			    p[1] < 0 || p[1] > blockSize * blockTraverser.GetYCount() ||
			    p[2] < 0 || p[2] > blockSize * blockTraverser.GetZCount())
				continue;


			util::Vector3D<site_t> blockLocation(intP[0] / blockSize, intP[1] / blockSize, intP[2] / blockSize);
			// util::Vector3D<site_t> blockLocation(1,1,24);
			
		    	
			blockTraverser.SetCurrentLocation(blockLocation); // select the block

	                const geometry::Block& block = blockTraverser.GetCurrentBlockData();

                        if (block.IsEmpty())
				continue;

			//set->AddPixel(pixRed);

  			geometry::SiteTraverser siteTraverser(latDat);

			util::Vector3D<site_t> siteLocation(intP[0] % blockSize, intP[1] % blockSize, intP[2] % blockSize);
			siteTraverser.SetCurrentLocation(siteLocation);

			if (topology::NetworkTopology::Instance()->GetLocalRank() != block.GetProcessorRankForSite(siteTraverser.GetCurrentIndex()))
      				continue; // site not stored on this node

			if (block.SiteIsSolid(siteTraverser.GetCurrentIndex())) 
				continue; // solid site
			

		       site_t siteIdx = block.GetLocalContiguousIndexForSite(siteTraverser.GetCurrentIndex());

		       const util::Vector3D<distribn_t>& velocity = propertyCache.velocityCache.Get(siteIdx); // FIXME!

		       float velMag = sqrt(pow((float)velocity.x, 2) + pow((float)velocity.y, 2) + pow((float)velocity.z, 2)); // velocity magnitude

		       CutPlanePixel pix(x, y, velMag);

		       set->AddPixel(pix);
		}
	}

/*
	geometry::BlockTraverser blockTraverser2(latDat);
	util::Vector3D<site_t> blockLocation2(1,1,24);
        blockTraverser2.SetCurrentLocation(blockLocation2);
        const geometry::Block& block2 = blockTraverser2.GetCurrentBlockData();
        std::cout << "empty : " << block2.IsEmpty() << std::endl;
*/
/*
        geometry::BlockTraverser blockTraverser2(latDat);
        do
        {
          const geometry::Block& block = blockTraverser2.GetCurrentBlockData();

          if (block.IsEmpty()) {
            continue;
          }


	  int blockOffsets[8][3] = {{ 0, 0, 0 }, { 1, 0, 0 }, { 0, 1, 0 }, { 1, 1, 0 },
				    { 0, 0, 1 }, { 1, 0, 1 }, { 0, 1, 1 }, { 1, 1, 1 }};

*/
          /*
	  int posSignCount = 0;
	  for (int i=0; i < 8; i++) {
	     util::Vector3D<float> p(blockSize * (blockTraverser.GetX() + blockOffsets[i][0]),
                                     blockSize * (blockTraverser.GetY() + blockOffsets[i][1]),
                                     blockSize * (blockTraverser.GetZ() + blockOffsets[i][2]));

	     if ((p - planeBase).Dot(planeNormal) > 0)
		posSignCount++;
	  }


	  if (posSignCount == 0 || posSignCount == 8)
		continue; // block is not intersected by plane - skip it
	  */
/*
	  std::cout << "nonempty block: <" << blockTraverser2.GetX() << ", " << blockTraverser2.GetY() << ", " << blockTraverser2.GetZ() << std::endl;
	  util::Vector3D<site_t> blockLocation(blockTraverser2.GetX() ,blockTraverser2.GetY() ,blockTraverser2.GetZ() );
		
	  geometry::BlockTraverser blockTraverser3(latDat);

      	  blockTraverser3.SetCurrentLocation(blockLocation); // select the block

	  const geometry::Block& block2 = blockTraverser3.GetCurrentBlockData();
          std::cout << "empty : " << block2.IsEmpty() << std::endl;

	} while (blockTraverser2.TraverseOne());
*/

/*
          geometry::SiteTraverser siteTraverser(latDat);


*/

        return set;
     }
    }
  }
}
