#ifndef HEMELB_VIS_CUTPLANE_CUTPLANEPIXEL_H
#define HEMELB_VIS_CUTPLANE_CUTPLANEPIXEL_H

#include "log/Logger.h"
#include "vis/BasicPixel.h"

namespace hemelb
{
  namespace vis
  {
    namespace cutplane
    {
      class CutPlanePixel : public BasicPixel
      {
        public:
          CutPlanePixel()
          {

          }

          CutPlanePixel(int i, int j, float particleVelocity) :
              BasicPixel(i, j), particle_vel(particleVelocity)
          {

          }

          void Combine(const CutPlanePixel& inPixel)
          {
	      //if (i ==0 && j == 0)
		      //std::cout << "combining pixel: " << inPixel.particle_vel << std::endl;
	      // FIXME: maybe average velocity for all incoming pixels
              particle_vel = (particle_vel + inPixel.particle_vel) / 2; // FIXME
          }

          float getVelocity() const
          {
            return particle_vel;
          }

          /**
           * Produces an MPI Datatype object but doesn't commit it or manage its memory.
           * @return
           */
          static MPI_Datatype GetMPIType()
          {
            const int typeCount = 3;
            int blocklengths[typeCount] = { 1, 1, 1 };

            MPI_Datatype types[typeCount] = { MPI_INT, MPI_INT, MPI_FLOAT};

            CutPlanePixel example;

            MPI_Aint displacements[typeCount];

            MPI_Get_address(&example.i, &displacements[0]);
            MPI_Get_address(&example.j, &displacements[1]);
            MPI_Get_address(&example.particle_vel, &displacements[2]);

            for (int ii = typeCount - 1; ii >= 0; --ii)
            {
              displacements[ii] -= displacements[0];
            }

            MPI_Datatype ret;

            MPI_Type_struct(typeCount, blocklengths, displacements, types, &ret);

            return ret;
          }

          void LogDebuggingInformation() const
          {
		/*
            log::Logger::Log<log::Info, log::OnePerCore>("Streak pixel at (%i,%i) with "
                                                         "(source inlet, velocity, z) = (%d, %f, %f)",
                                                         GetI(),
                                                         GetJ(),
                                                         particle_inlet_id,
                                                         particle_vel,
                                                         particle_z);
		*/
          }

        private:
	  float particle_vel;
      };
    }
  }
}

#endif /* HEMELB_VIS_STREAKLINEDRAWER_STREAKPIXEL_H */
