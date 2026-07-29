import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean

structure ClosureSystem (Ground : Type u) where
  carrier : Set Ground
  closureOperator : Set Ground → Set Ground
  idempotent : ∀ X, closureOperator (closureOperator X) = closureOperator X
  extensive : ∀ X, X ⊆ closureOperator X
  monotone : ∀ X Y, X ⊆ Y → closureOperator X ⊆ closureOperator Y

def ClosureSystemClosed {Ground : Type u} (C : ClosureSystem Ground) : Prop :=
  C.idempotent ∧ C.extensive ∧ C.monotone

structure ClosureSystemEvidence {Ground : Type u} (C : ClosureSystem Ground) where
  idempotentClosed : C.idempotent
  extensiveClosed : C.extensive
  monotoneClosed : C.monotone

theorem closure_system_closed_from_evidence
    {Ground : Type u} (C : ClosureSystem Ground) (E : ClosureSystemEvidence C) :
    ClosureSystemClosed C := by
  exact And.intro E.idempotentClosed (And.intro E.extensiveClosed E.monotoneClosed)

end CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean
end HautevilleHouse