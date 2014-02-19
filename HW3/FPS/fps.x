!create cd : FPSPlayer
!create currentState : PlayerState
!create neutral : Neutral
!create panic : Panic
!create attack : Attack
!create dead : Dead

-- association between states back to the coffe dispenser
!insert (currentState, cd) into playerState
!insert (neutral, cd) into playerState
!insert (panic, cd) into playerState
!insert (attack, cd) into playerState
!insert (dead, cd) into playerState

--create the players current position and the locations it can view
!create ploc : Location
!create viewLoc1 : Location
!create viewLoc2 : Location
!create viewLoc3 : Location
--why doesnt this work???
!ploc.x := 3
!ploc.y := 3
!viewLoc1.x := 2
!viewLoc1.y := 4
!viewLoc2.x := 3
!viewLoc2.y := 4
!viewLoc3.x := 4
!viewLoc3.y := 4


!create pview : View
!insert (cd, pview) into playerView
!insert (pview, viewLoc1) into ViewLocations
!insert (pview, viewLoc2) into ViewLocations
!insert (pview, viewLoc3) into ViewLocations


!cd.neutralState := neutral
!cd.attackState := attack
!cd.panicState := panic
!cd.deadState := dead

!cd.initInstance()