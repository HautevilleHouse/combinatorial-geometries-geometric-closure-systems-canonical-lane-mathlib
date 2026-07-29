import CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean.RiemannianCurvature

namespace HautevilleHouse
namespace CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean

structure MatroidExchangePackage (G : RiemannianCurvaturePackage) where
  groundSet : Type u
  rankFunction : groundSet → ℕ
  exchangeProperty : Prop
  closureOperator : groundSet → groundSet
  monotonicity : Prop
  idempotence : Prop
  exchangePropertyProof : exchangeProperty
  monotonicityProof : monotonicity
  idempotenceProof : idempotence

structure MatroidExchangeEvidence {G : RiemannianCurvaturePackage} (M : MatroidExchangePackage G) where
  exchangePropertyClosed : M.exchangeProperty
  monotonicityClosed : M.monotonicity
  idempotenceClosed : M.idempotence

def MatroidExchangeClosed {G : RiemannianCurvaturePackage} (M : MatroidExchangePackage G) : Prop :=
  M.exchangeProperty ∧ M.monotonicity ∧ M.idempotence

theorem matroid_exchange_closed_from_evidence
    {G : RiemannianCurvaturePackage} (M : MatroidExchangePackage G)
    (E : MatroidExchangeEvidence M) : MatroidExchangeClosed M := by
  exact And.intro E.exchangePropertyClosed
    (And.intro E.monotonicityClosed E.idempotenceClosed)

end CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean
end HautevilleHouse