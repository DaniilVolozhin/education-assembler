.include "tn2313def.inc"

/*
		ldi		R16,0xFF		; ��������� � ������ 16 ����� 255
		out		DDRB,R16		; ��������� ���� B �� �����
		out		DDRD,R16		; ��������� ���� D �� �����
		out		DDRA,R16		; ��������� ���� A �� �����

		ldi		R16,0x0F		; � ������� 16 ������� 4 ������� 0, ������� 1
		out		PORTB,R16		; � ����� B ������� 4 ������� 0, ������� 1

		rjmp	metka

		ldi		R16,0b01010101
		mov		R16,R16

		out		PORTD,R16
		ldi		R16,0b00000010
		out		PORTA,R16

metka:	rjmp	metka
*/

		ldi		R16,0xFF		; ��������� � ������� 16 ����� 255
		out		DDRB,R16		
		out		DDRA,R16		
		out		DDRD,R16
				
		ldi		R16,0b10001110	; ��������� � ������� 16 		
		out		PORTB,R16

		ldi		R16,0b00000010
		out		PORTA,R16		

		ldi		R16,0b00001111
		out		PORTD,R16
metka:	rjmp	metka
