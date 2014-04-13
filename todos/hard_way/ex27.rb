
puts <<LESSON
The Truth Terms
	and   	&& 
	or 		|| 
	not		! 
	!=
	==
	>=
	<=
	true
	false

not !		true?
!false 		true
!true		false

or  ||					true?
true || false 		true
true || true 		true 
false || true 		true
false || false 		false

and &&				true?
true && false 		false
true && true 		true
false && false 		false
false && true 		false 

! ||				true?
!(true||false)		false 
!(true||true) 		false
!(false||true) 		false
!(false||false)  		true


! &&				true?
!(true&&false)		true
!(true&&true)		false
!(false&&true)		true 
!(false&&false) 	true

!=					true?
1 != 0				true
1 != 1 				false
0 != 1				true
0 != 0 				false

== 					true?
1 == 0 				false
1 == 1 				true
0 == 1 				false
0 == 0	 			true 
LESSON