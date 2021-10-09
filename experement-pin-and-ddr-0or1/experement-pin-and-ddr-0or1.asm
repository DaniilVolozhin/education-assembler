.include "tn2313def.inc"


//experement. ddr 0 and port 0 what in pin


		ldi		R16,0b11111111
		out		DDRB,R16
		out		PORTB,R16

		ldi		R16,0b00000000
		out		DDRD,R16
		out		PORTD,R16

main:	in		R16,PIND
		out		PORTB,R16

		rjmp	main
		















/*//experement pin and ddr 0or1
		ldi		R16,0b00001111
		out		DDRB,R16

		ldi		R16,0b00110011
		out		PORTB,R16

main:	rjmp	main
*/

