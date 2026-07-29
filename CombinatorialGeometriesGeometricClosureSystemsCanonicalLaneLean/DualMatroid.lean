import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean.ClosureSystemTypes
import HautevilleHouse.CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean.MatroidAxioms

namespace HautevilleHouse
namespace CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean

structure DualMatroid (E : Type u) (C : ClosureSystem E) (M : Matroid E C) where
  dualClosure : Set E → Set E
  dualClosureProperties : ∀ X : Set E, dualClosure (dualClosure X) = dualClosure X ∧ X ⊆ dualClosure X ∧ (∀ Y, X ⊆ Y → dualClosure X ⊆ dualClosure Y)
  orthogonality : ∀ X : Set E, dualClosure X = {y : E | ∀ x ∈ X, x ∉ C.closureOperator {y}}?

structure DualMatroidEvidence (E : Type u) (C : ClosureSystem E) (M : Matroid E C) (D : DualMatroid E C M) where
  dualClosurePropertiesClosed : D.dualClosureProperties
  orthogonalityClosed : D.orthogonality

def DualMatroidClosed (E : Type u) (C : ClosureSystem E) (M : Matroid E C) (D : DualMatroid E C M) : Prop :=
  D.dualClosureProperties ∧ D.orthogonality

theorem dual_matroid_closed_from_evidence (E : Type u) (C : ClosureSystem E) (M : Matroid E C) (D : DualMatroid E C M)
    (E_ev : DualMatroidEvidence E C M D) : DualMatroidClosed E C M D := by
  exact And.intro E_ev.dualClosurePropertiesClosed E_ev.orthogonalityClosed

end CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean
end HautevilleHouse