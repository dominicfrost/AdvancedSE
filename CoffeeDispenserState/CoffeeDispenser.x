!create cd : CoffeeDispenser
!create noCoins : NoCoins
!create hasCoins : HasCoins
!create enoughCoins : EnoughCoins

-- association between states back to the coffe dispenser
!insert (noCoins, cd) into DispenserState
!insert (hasCoins, cd) into DispenserState
!insert (enoughCoins, cd) into DispenserState

!cd.noCoinsState := noCoins
!cd.hasCoinsState := hasCoins
!cd.ebnoughCoinsState := enoughCoins