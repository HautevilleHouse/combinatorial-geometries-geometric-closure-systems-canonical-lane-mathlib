import CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ClosureSystemSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ClosureSystemObject where
  space : ClosureSystemSpace
  exchangeProperty : Prop
  steadyStateAchieved : Prop
  closureModel : Type
  closureTopology : TopologicalSpace closureModel
  closureIsIdempotent : Prop
  conclusion : closureIsIdempotent

structure ClosureSystemEndgameState where
  object : ClosureSystemObject

def ClosureSystemWitnessClosed (O : ClosureSystemObject) : Prop :=
  O.closureIsIdempotent

end CombinatorialGeometriesGeometricClosureSystemsCanonicalLaneLean
end HautevilleHouse