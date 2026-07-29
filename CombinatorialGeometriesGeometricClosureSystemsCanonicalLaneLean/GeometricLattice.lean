import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean

structure GeometricLatticePackage where
  groundSet : Type
  flats : Set (Set groundSet)
  latticeProperties : Prop

def GeometricLatticeClosed (G : GeometricLatticePackage) : Prop :=
  G.latticeProperties

theorem geometric_lattice_closed (G : GeometricLatticePackage) (h : G.latticeProperties) :
    GeometricLatticeClosed G := h

end CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean
end HautevilleHouse
