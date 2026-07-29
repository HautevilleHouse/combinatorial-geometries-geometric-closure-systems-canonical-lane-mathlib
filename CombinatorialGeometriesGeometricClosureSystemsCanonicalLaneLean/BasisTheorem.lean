import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean.ClosureSystemTypes
import HautevilleHouse.CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean.MatroidAxioms
import HautevilleHouse.CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean.CircuitStructure

namespace HautevilleHouse
namespace CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean

structure Basis (E : Type u) (C : ClosureSystem E) (M : Matroid E C) where
  basisSet : Set E
  independent : basisSet = C.closureOperator basisSet
  spanning : C.closureOperator basisSet = Set.univ

structure BasisEvidence (E : Type u) (C : ClosureSystem E) (M : Matroid E C) (B : Basis E C M) where
  independentClosed : B.independent
  spanningClosed : B.spanning

def BasisClosed (E : Type u) (C : ClosureSystem E) (M : Matroid E C) (B : Basis E C M) : Prop :=
  B.independent ∧ B.spanning

theorem basis_closed_from_evidence (E : Type u) (C : ClosureSystem E) (M : Matroid E C) (B : Basis E C M)
    (E_ev : BasisEvidence E C M B) : BasisClosed E C M B := by
  exact And.intro E_ev.independentClosed E_ev.spanningClosed

theorem basis_cardinality_equal (E : Type u) (C : ClosureSystem E) (M : Matroid E C) (B1 B2 : Basis E C M) :
    Finset.card (Finset.filter (fun x => x ∈ B1.basisSet) Finset.univ) = Finset.card (Finset.filter (fun x => x ∈ B2.basisSet) Finset.univ) := by
  sorry

end CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean
end HautevilleHouse