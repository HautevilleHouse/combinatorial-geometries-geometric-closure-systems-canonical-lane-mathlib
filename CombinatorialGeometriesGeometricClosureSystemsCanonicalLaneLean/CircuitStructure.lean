import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean.ClosureSystemTypes
import HautevilleHouse.CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean.MatroidAxioms

namespace HautevilleHouse
namespace CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean

structure Circuit (E : Type u) (C : ClosureSystem E) (M : Matroid E C) where
  circuitSet : Set E
  minimalDependent : ∀ X : Set E, X ⊂ circuitSet → X ∉ {Y | Y = C.closureOperator Y}
  dependent : circuitSet ≠ C.closureOperator circuitSet

structure CircuitEvidence (E : Type u) (C : ClosureSystem E) (M : Matroid E C) (Circ : Circuit E C M) where
  minimalDependentClosed : Circ.minimalDependent
  dependentClosed : Circ.dependent

def CircuitClosed (E : Type u) (C : ClosureSystem E) (M : Matroid E C) (Circ : Circuit E C M) : Prop :=
  Circ.minimalDependent ∧ Circ.dependent

theorem circuit_closed_from_evidence (E : Type u) (C : ClosureSystem E) (M : Matroid E C) (Circ : Circuit E C M)
    (E_ev : CircuitEvidence E C M Circ) : CircuitClosed E C M Circ := by
  exact And.intro E_ev.minimalDependentClosed E_ev.dependentClosed

end CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean
end HautevilleHouse