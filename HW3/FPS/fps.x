!create player : FPSPlayer
!create currentState : PlayerState
!create neutral : Neutral
!create panic : Panic
!create attack : Attack
!create dead : Dead

-- association between states back to the coffe dispenser
!insert (currentState, player) into playerState
!insert (neutral, player) into playerState
!insert (panic, player) into playerState
!insert (attack, player) into playerState
!insert (dead, player) into playerState


!create opponent : Opponent
!create currentStateOpp : PlayerState
!create neutralOpp : Neutral
!create panicOpp : Panic
!create attackOpp : Attack
!create deadOpp : Dead

-- association between states back to the coffe dispenser
!insert (currentStateOpp, opponent) into playerState
!insert (neutralOpp, opponent) into playerState
!insert (panicOpp, opponent) into playerState
!insert (attackOpp, opponent) into playerState
!insert (deadOpp, opponent) into playerState


--create the players current position and the locations it can view
!create ploc : Location
!create viewLoc : Location
!create pview : View
!insert (player, pview) into playerView
!insert (pview, viewLoc) into ViewLocations
!insert (player, ploc) into characterLocation

--create the players current position and the locations it can view
!create plocOpp : Location
!create viewLocOpp : Location
!create pviewOpp : View
!insert (opponent, pviewOpp) into playerView
!insert (pviewOpp, viewLocOpp) into ViewLocations
!insert (opponent, plocOpp) into characterLocation


!player.neutralState := neutral
!player.attackState := attack
!player.panicState := panic
!player.deadState := dead


!opponent.neutralState := neutralOpp
!opponent.attackState := attackOpp
!opponent.panicState := panicOpp
!opponent.deadState := deadOpp

!player.initInstance()
!opponent.initInstance()