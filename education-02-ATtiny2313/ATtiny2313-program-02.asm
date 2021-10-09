.include "tn2313def.inc"

/*
		ldi		R16,0xFF		; Загрузили в регист 16 число 255
		out		DDRB,R16		; Настроили порт B на выход
		out		DDRD,R16		; Настроили порт D на выход
		out		DDRA,R16		; Настроили порт A на выход

		ldi		R16,0x0F		; В регистр 16 старшие 4 разряда 0, младшие 1
		out		PORTB,R16		; В порте B старшие 4 разряда 0, младшие 1

		rjmp	metka

		ldi		R16,0b01010101
		mov		R16,R16

		out		PORTD,R16
		ldi		R16,0b00000010
		out		PORTA,R16

metka:	rjmp	metka
*/

		ldi		R16,0xFF		; Загрузили в регистр 16 число 255
		out		DDRB,R16		
		out		DDRA,R16		
		out		DDRD,R16
				
		ldi		R16,0b10001110	; Загрузили в регистр 16 		
		out		PORTB,R16

		ldi		R16,0b00000010
		out		PORTA,R16		

		ldi		R16,0b00001111
		out		PORTD,R16
metka:	rjmp	metka
