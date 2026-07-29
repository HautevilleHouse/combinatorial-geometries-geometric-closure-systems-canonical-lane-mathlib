import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean

structure MatroidMinor {Ground M : Type u} (C : ClosureSystem M) where
  contraction : ClosureSystem Ground
  restriction : ClosureSystem Ground
  minorOperation : Prop

def MinorClosed {Ground M : Type u} {C : ClosureSystem M} (Min : MatroidMinor C) : Prop :=
  Min.minorOperation

end CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean
end HautevilleHouse