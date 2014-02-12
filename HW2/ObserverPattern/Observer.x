!create titanic : ConcreteSubject;
!create newYork : ConcreteObserver;
!insert (titanic, newYork) into notifies
!insert (newYork, titanic) into observes

!titanic.attach(newYork)
!titanic.notify()
!titanic.detach(newYork)
