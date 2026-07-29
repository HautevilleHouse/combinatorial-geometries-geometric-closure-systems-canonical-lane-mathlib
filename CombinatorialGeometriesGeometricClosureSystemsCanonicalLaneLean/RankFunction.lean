import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean.ClosureSystemTypes
import HautevilleHouse.CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean.MatroidAxioms

namespace HautevilleHouse
namespace CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean

structure RankFunction (E : Type u) (C : ClosureSystem E) (M : Matroid E C) where
  rank : Set E → ℕ
  rankOfEmptySet : rank ∅ = 0
  rankOfSingleton : ∀ x : E, rank {x} ≤ 1
  submodularity : ∀ X Y : Set E, rank (X ∪ Y) + rank (X ∩ Y) ≤ rank X + rank Y
  rankOfClosure : ∀ X : Set E, rank (C.closureOperator X) = rank X

structure RankFunctionEvidence (E : Type u) (C : ClosureSystem E) (M : Matroid E C) (R : RankFunction E C M) where
  rankOfEmptySetClosed : R.rankOfEmptySet
  rankOfSingletonClosed : R.rankOfSingleton
  submodularityClosed : R.submodularity
  rankOfClosureClosed : R.rankOfClosure

def RankFunctionClosed (E : Type u) (C : ClosureSystem E) (M : Matroid E C) (R : RankFunction E C M) : Prop :=
  R.rankOfEmptySet ∧ R.rankOfSingleton ∧ R.submodularity ∧ R.rankOfClosure

theorem rank_function_closed_from_evidence (E : Type u) (C : ClosureSystem E) (M : Matroid E C) (R : RankFunction E C M)
    (E_ev : RankFunctionEvidence E C M R) : RankFunctionClosed E C M R := by
  exact And.intro E_ev.rankOfEmptySetClosed (And.intro E_ev.rankOfSingletonClosed
    (And.intro E_ev.submodularityClosed E_ev.rankOfClosureClosed))

end CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean
end HautevilleHouse