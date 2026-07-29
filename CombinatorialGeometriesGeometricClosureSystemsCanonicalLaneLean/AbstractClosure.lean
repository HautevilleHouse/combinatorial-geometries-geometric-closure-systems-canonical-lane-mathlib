import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean

structure AbstractClosureSystem where
  carrier : Type u
  closure : Set carrier → Set carrier
  monotone : ∀ A B, A ⊆ B → closure A ⊆ closure B
  extensive : ∀ A, A ⊆ closure A
  idempotent : ∀ A, closure (closure A) = closure A

structure AbstractClosureEvidence (C : AbstractClosureSystem) where
  monotoneClosed : C.monotone
  extensiveClosed : C.extensive
  idempotentClosed : C.idempotent

def AbstractClosureClosed (C : AbstractClosureSystem) : Prop :=
  C.monotone ∧ C.extensive ∧ C.idempotent

theorem abstract_closure_closed_from_evidence (C : AbstractClosureSystem)
    (E : AbstractClosureEvidence C) : AbstractClosureClosed C := by
  exact And.intro E.monotoneClosed (And.intro E.extensiveClosed E.idempotentClosed)

end CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean
end HautevilleHouse