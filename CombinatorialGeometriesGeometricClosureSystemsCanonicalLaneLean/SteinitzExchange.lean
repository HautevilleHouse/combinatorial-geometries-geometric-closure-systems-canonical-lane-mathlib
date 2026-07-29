import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean

structure SteinitzExchangeProperty {Ground : Type u} (C : ClosureSystem Ground) where
  exchange : ∀ (A : Set Ground) (a b : Ground),
      a ∉ C.closureOperator A → a ∈ C.closureOperator (insert b A) → b ∈ C.closureOperator (insert a A)

def ExchangeClosed {Ground : Type u} {C : ClosureSystem Ground} (S : SteinitzExchangeProperty C) : Prop :=
  S.exchange

end CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean
end HautevilleHouse