import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean

structure MatroidAxiomsPackage where
  groundSet : Type
  rankFunction : groundSet → ℕ
  rankAxioms : Prop

def MatroidAxiomsClosed (M : MatroidAxiomsPackage) : Prop :=
  M.rankAxioms

theorem matroid_axioms_closed (M : MatroidAxiomsPackage) (h : M.rankAxioms) :
    MatroidAxiomsClosed M := h

end CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean
end HautevilleHouse
