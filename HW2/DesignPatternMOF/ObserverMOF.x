!create ISub : ISubject
!create IObs : IObserver
!create Obs : ConcreteObserver
!create Sub : ConcreteSubject

!create ae1 : AssociationEnd
!create ae2 : AssociationEnd
!create a1 : Notifies
!insert (ISub, ae1) into two
!insert (ae1, a1) into five
!insert (ae2, a1) into five
!insert (IObs, ae2) into two

!create ae3 : AssociationEnd
!create ae4 : AssociationEnd
!create a3 : Observes
!insert (Sub, ae3) into two
!insert (ae3, a3) into five
!insert (ae4, a3) into five
!insert (Obs, ae4) into two

!insert (ISub, Sub) into three
!insert (IObs, Obs) into three

!create attach : Attach
!insert (ISub, attach) into seven

!create detatch : Detatch
!insert (ISub, detatch) into seven

!create notify : Notify
!insert (ISub, notify) into seven

!create update : Update
!insert (IObs, update) into seven

!create observerState : ObserverState
!insert (Obs, observerState) into seven

!create subjectState : SubjectState
!insert (Sub, subjectState) into seven