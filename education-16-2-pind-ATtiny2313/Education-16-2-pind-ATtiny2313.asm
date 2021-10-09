.include "tn2313def.inc"


.def	temp		=R16
.equ	const		=0x0F


		ldi		temp,0b00000000
		out		DDRD,temp

		ldi		temp,0b11111111
		out		DDRB,temp
		out		PORTD,temp

main:	in		temp,PIND
		out		PORTB,temp

		rjmp	main




