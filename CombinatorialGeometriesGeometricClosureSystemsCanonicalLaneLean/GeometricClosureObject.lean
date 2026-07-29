import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean

structure GeometricClosureObject where
  groundSet : Type
  closureOperator : groundSet → Set (Set groundSet)
  closureProperties : Prop
  conclusion : closureProperties

end CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean
end HautevilleHouse
