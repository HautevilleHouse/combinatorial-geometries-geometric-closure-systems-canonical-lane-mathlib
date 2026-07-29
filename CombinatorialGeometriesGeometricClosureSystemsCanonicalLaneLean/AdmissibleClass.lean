import CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean

structure AdmissibleClass where
  object : ClosureSystemObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ClosureSystemWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean
end HautevilleHouse