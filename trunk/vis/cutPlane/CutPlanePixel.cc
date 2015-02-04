#include "vis/cutPlane/CutPlanePixel.h"

namespace hemelb
{
  template<>
  MPI_Datatype MpiDataTypeTraits<hemelb::vis::cutplane::CutPlanePixel>::RegisterMpiDataType()
  {
    MPI_Datatype ret = vis::cutplane::CutPlanePixel::GetMPIType();
    MPI_Type_commit(&ret);
    return ret;
  }
}
