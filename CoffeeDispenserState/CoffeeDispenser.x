!create cd : CoffeeDispenser
!create noCoins : NoCoins
!create hasCoins : HasCoins
!create enoughCoins : EnoughCoins

-- association between states back to the coffe dispenser
!insert (noCoins, cd) into dispenserState
!insert (hasCoins, cd) into dispenserState
!insert (enoughCoins, cd) into dispenserState