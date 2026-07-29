import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean

def ConstrainedGeometricClosureClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_geometric_closure_endgame (A : AdmissibleClass) :
    ConstrainedGeometricClosureClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean
end HautevilleHouse