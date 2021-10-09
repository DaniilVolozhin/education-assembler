.include "tn2313def.inc"


.def	temp	=R16
.equ	const	=0b00001111			;Константе 0x0F присвоили имя const 00001111


			
		ldi		temp,const			;В регистр R16 загрузили значение 0x0F
		out		DDRB,temp	
		ldi		temp,0b10111100		;В регист 16 загрузили значение
		out		PORTB,temp	
		
		in		PINB,temp			;В регист 16 считали значения с порта б

main:	rjmp	main




















/*.def	temp		=R16			;R16 присвоили имя temp
.equ 	const		=0xFF			;Константе 0x0F присвоили имя const


		ldi 	temp,0b00000000
		out		DDRD,temp

		ldi 	temp,const			;В регистр R16 загрузили значение 0x0F
		out		PORTD,temp

		out		DDRB,temp
		out		PORTB,temp

main:	in		temp,PIND			;Из порта Б считывем в регистр состояние
		out		PORTB,temp

		rjmp	main
*/
