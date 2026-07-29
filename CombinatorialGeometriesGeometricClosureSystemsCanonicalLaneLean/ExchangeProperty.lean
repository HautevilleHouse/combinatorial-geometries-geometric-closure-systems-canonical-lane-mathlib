import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean

structure ExchangePropertySystem where
  carrier : Type u
  closure : Set carrier → Set carrier
  abstractClosure : AbstractClosureSystem
  exchange : ∀ (A : Set carrier) (a b : carrier),
    a ∉ closure A → a ∈ closure (A ∪ {b}) → b ∈ closure (A ∪ {a})

structure ExchangePropertyEvidence (E : ExchangePropertySystem) where
  abstractClosureClosed : AbstractClosureClosed E.abstractClosure
  exchangeClosed : E.exchange

def ExchangePropertyClosed (E : ExchangePropertySystem) : Prop :=
  AbstractClosureClosed E.abstractClosure ∧ E.exchange

theorem exchange_property_closed_from_evidence (E : ExchangePropertySystem)
    (Ev : ExchangePropertyEvidence E) : ExchangePropertyClosed E := by
  exact And.intro Ev.abstractClosureClosed Ev.exchangeClosed

end CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean
end HautevilleHouse