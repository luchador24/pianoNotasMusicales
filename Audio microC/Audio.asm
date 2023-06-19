
_main:

;Audio.c,17 :: 		void main(){
;Audio.c,18 :: 		ANSEL = 0;
	CLRF       ANSEL+0
;Audio.c,19 :: 		ANSELH = 0;
	CLRF       ANSELH+0
;Audio.c,20 :: 		TRISD = 0;
	CLRF       TRISD+0
;Audio.c,21 :: 		TRISA=1;
	MOVLW      1
	MOVWF      TRISA+0
;Audio.c,22 :: 		TRISB=0;
	CLRF       TRISB+0
;Audio.c,23 :: 		TRISC=0;
	CLRF       TRISC+0
;Audio.c,25 :: 		Sound_Init(&PORTD,3); //Puerto y pin donde se conecta la bocina
	MOVLW      PORTD+0
	MOVWF      FARG_Sound_Init_snd_port+0
	MOVLW      3
	MOVWF      FARG_Sound_Init_snd_pin+0
	CALL       _Sound_Init+0
;Audio.c,26 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;Audio.c,27 :: 		PORTC=0b00000000;
	CLRF       PORTC+0
;Audio.c,28 :: 		while(1){
L_main0:
;Audio.c,30 :: 		if(Button(&PORTA, 0, 1, 1)){
	MOVLW      PORTA+0
	MOVWF      FARG_Button_port+0
	CLRF       FARG_Button_pin+0
	MOVLW      1
	MOVWF      FARG_Button_time_ms+0
	MOVLW      1
	MOVWF      FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main2
;Audio.c,31 :: 		Lcd_Out(1,1, "ADELANTE");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_Audio+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Audio.c,32 :: 		PORTC=0b00000001;
	MOVLW      1
	MOVWF      PORTC+0
;Audio.c,33 :: 		Delay_ms(3000);
	MOVLW      31
	MOVWF      R11+0
	MOVLW      113
	MOVWF      R12+0
	MOVLW      30
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
;Audio.c,34 :: 		PORTC=0b00000000;
	CLRF       PORTC+0
;Audio.c,35 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Audio.c,36 :: 		}
L_main2:
;Audio.c,37 :: 		if(Button(&PORTA, 1, 1, 1)){
	MOVLW      PORTA+0
	MOVWF      FARG_Button_port+0
	MOVLW      1
	MOVWF      FARG_Button_pin+0
	MOVLW      1
	MOVWF      FARG_Button_time_ms+0
	MOVLW      1
	MOVWF      FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main4
;Audio.c,38 :: 		Lcd_Out(1,1, "ABAJO");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_Audio+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Audio.c,39 :: 		PORTC=0b00001000;
	MOVLW      8
	MOVWF      PORTC+0
;Audio.c,40 :: 		Delay_ms(3000);
	MOVLW      31
	MOVWF      R11+0
	MOVLW      113
	MOVWF      R12+0
	MOVLW      30
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
;Audio.c,41 :: 		PORTC=0b00000000;
	CLRF       PORTC+0
;Audio.c,42 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Audio.c,43 :: 		}
L_main4:
;Audio.c,44 :: 		if(Button(&PORTA, 4, 1, 1)){
	MOVLW      PORTA+0
	MOVWF      FARG_Button_port+0
	MOVLW      4
	MOVWF      FARG_Button_pin+0
	MOVLW      1
	MOVWF      FARG_Button_time_ms+0
	MOVLW      1
	MOVWF      FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main6
;Audio.c,45 :: 		Lcd_Out(1,1, "DERECHA");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_Audio+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Audio.c,46 :: 		PORTC=0b00000100;
	MOVLW      4
	MOVWF      PORTC+0
;Audio.c,47 :: 		Delay_ms(3000);
	MOVLW      31
	MOVWF      R11+0
	MOVLW      113
	MOVWF      R12+0
	MOVLW      30
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
;Audio.c,48 :: 		PORTC=0b00000000;
	CLRF       PORTC+0
;Audio.c,49 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Audio.c,50 :: 		}
L_main6:
;Audio.c,51 :: 		if(Button(&PORTA, 7, 1, 1)){
	MOVLW      PORTA+0
	MOVWF      FARG_Button_port+0
	MOVLW      7
	MOVWF      FARG_Button_pin+0
	MOVLW      1
	MOVWF      FARG_Button_time_ms+0
	MOVLW      1
	MOVWF      FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main8
;Audio.c,52 :: 		Lcd_Out(1,1, "IZQUIERDA");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_Audio+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Audio.c,53 :: 		PORTC=0b00000010;
	MOVLW      2
	MOVWF      PORTC+0
;Audio.c,54 :: 		Delay_ms(3000);
	MOVLW      31
	MOVWF      R11+0
	MOVLW      113
	MOVWF      R12+0
	MOVLW      30
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
	NOP
;Audio.c,55 :: 		PORTC=0b00000000;
	CLRF       PORTC+0
;Audio.c,56 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Audio.c,57 :: 		}
L_main8:
;Audio.c,74 :: 		}
	GOTO       L_main0
;Audio.c,75 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
