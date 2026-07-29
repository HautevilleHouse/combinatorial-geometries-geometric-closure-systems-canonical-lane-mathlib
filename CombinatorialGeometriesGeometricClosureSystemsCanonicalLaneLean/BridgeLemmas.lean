import CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ClosureSystemWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean
end HautevilleHouse