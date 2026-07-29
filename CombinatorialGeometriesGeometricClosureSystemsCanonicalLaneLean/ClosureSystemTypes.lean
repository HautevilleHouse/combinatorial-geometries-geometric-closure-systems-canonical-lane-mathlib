import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean

structure ClosureSystem (E : Type u) where
  closureOperator : Set E → Set E
  extensivity : ∀ X : Set E, X ⊆ closureOperator X
  monotonicity : ∀ X Y : Set E, X ⊆ Y → closureOperator X ⊆ closureOperator Y
  idempotence : ∀ X : Set E, closureOperator (closureOperator X) = closureOperator X
  antiexchangeProperty : Prop

structure ClosureSystemEvidence (E : Type u) (C : ClosureSystem E) where
  extensivityClosed : C.extensivity = True
  monotonicityClosed : C.monotonicity = True
  idempotenceClosed : C.idempotence = True
  antiexchangePropertyClosed : C.antiexchangeProperty

def ClosureSystemClosed (E : Type u) (C : ClosureSystem E) : Prop :=
  C.extensivity ∧ C.monotonicity ∧ C.idempotence ∧ C.antiexchangeProperty

theorem closure_system_closed_from_evidence (E : Type u) (C : ClosureSystem E) (E_ev : ClosureSystemEvidence E C) :
    ClosureSystemClosed E C := by
  exact And.intro (by
    unfold ClosureSystemClosed
    exact And.intro (by
      unfold ClosureSystemEvidence at E_ev
      exact E_ev.extensivityClosed)
    (And.intro (by
      unfold ClosureSystemEvidence at E_ev
      exact E_ev.monotonicityClosed)
    (And.intro (by
      unfold ClosureSystemEvidence at E_ev
      exact E_ev.idempotenceClosed) E_ev.antiexchangePropertyClosed)))

end CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean
end HautevilleHouse