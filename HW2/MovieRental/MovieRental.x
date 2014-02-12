-- my x file

!create cust1:Customer 
!create m1:Movie 
!create r1:Rental 
!set m1.priceCode := #regular
!set m1.title := 'Lion King' 
!set r1.daysRented := 5
!set cust1.name := 'Bob'
!set cust1.numRen := 1
!insert (cust1,r1) into custRentals
!insert (r1,m1) into movRental
 
!cust1.Statement() 