.include "tn2313def.inc"


.def	temp	=R16
.equ	const	=0b00001111			;��������� 0x0F ��������� ��� const 00001111


			
		ldi		temp,const			;� ������� R16 ��������� �������� 0x0F
		out		DDRB,temp	
		ldi		temp,0b10111100		;� ������ 16 ��������� ��������
		out		PORTB,temp	
		
		in		PINB,temp			;� ������ 16 ������� �������� � ����� �

main:	rjmp	main




















/*.def	temp		=R16			;R16 ��������� ��� temp
.equ 	const		=0xFF			;��������� 0x0F ��������� ��� const


		ldi 	temp,0b00000000
		out		DDRD,temp

		ldi 	temp,const			;� ������� R16 ��������� �������� 0x0F
		out		PORTD,temp

		out		DDRB,temp
		out		PORTB,temp

main:	in		temp,PIND			;�� ����� � �������� � ������� ���������
		out		PORTB,temp

		rjmp	main
*/
