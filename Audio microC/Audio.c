sbit LCD_RS at RB4_bit;
sbit LCD_EN at RB5_bit;
sbit LCD_D4 at RB0_bit;
sbit LCD_D5 at RB1_bit;
sbit LCD_D6 at RB2_bit;
sbit LCD_D7 at RB3_bit;

sbit LCD_RS_Direction at TRISB4_bit;
sbit LCD_EN_Direction at TRISB5_bit;
sbit LCD_D4_Direction at TRISB0_bit;
sbit LCD_D5_Direction at TRISB1_bit;
sbit LCD_D6_Direction at TRISB2_bit;
sbit LCD_D7_Direction at TRISB3_bit;

//Button(&puerto, pin, 1, 1);     estructura

void main(){
ANSEL = 0;
ANSELH = 0;
TRISD = 0;
TRISA=1;
TRISB=0;
TRISC=0;
//TRISB=1;//declara el puerto C como entrada
Sound_Init(&PORTD,3); //Puerto y pin donde se conecta la bocina
Lcd_Init();
PORTC=0b00000000;
while(1){

if(Button(&PORTA, 0, 1, 1)){
                   Lcd_Out(1,1, "ADELANTE");
                   PORTC=0b00000001;
                   Delay_ms(3000);
                   PORTC=0b00000000;
                   Lcd_Cmd(_LCD_CLEAR);
 }
 if(Button(&PORTA, 1, 1, 1)){
                    Lcd_Out(1,1, "ABAJO");
                   PORTC=0b00001000;
                   Delay_ms(3000);
                   PORTC=0b00000000;
                   Lcd_Cmd(_LCD_CLEAR);
 }
  if(Button(&PORTA, 4, 1, 1)){
                   Lcd_Out(1,1, "DERECHA");
                   PORTC=0b00000100;
                   Delay_ms(3000);
                   PORTC=0b00000000;
                   Lcd_Cmd(_LCD_CLEAR);
 }
  if(Button(&PORTA, 7, 1, 1)){
                   Lcd_Out(1,1, "IZQUIERDA");
                   PORTC=0b00000010;
                   Delay_ms(3000);
                   PORTC=0b00000000;
                   Lcd_Cmd(_LCD_CLEAR);
 }

}
}