/*****************************************************
This program was produced by the
CodeWizardAVR V1.24.6 Professional
Automatic Program Generator
� Copyright 1998-2005 Pavel Haiduc, HP InfoTech s.r.l.
http://www.hpinfotech.com
e-mail:office@hpinfotech.com

Project : 
Version : 
Date    : 11/10/2005
Author  : CUONGDD                            
Company : 3iGROUP                           
Comments: 


Chip type           : ATmega16/162/8515
Program type        : Application
Clock frequency     : 8.000000 MHz
Memory model        : Small
External SRAM size  : 0
Data Stack size     : 256
*****************************************************/

// (C) 1998-2004 Pavel Haiduc, HP InfoTech S.R.L.


sfrb UBRR1L=0;
sfrb UCSR1B=1;
sfrb UCSR1A=2;
sfrb UDR1=3;
sfrb OSCCAL=4;
sfrb OCDR=4;
sfrb PINE=5;
sfrb DDRE=6;
sfrb PORTE=7;
sfrb ACSR=8;
sfrb UBRR0L=9;
sfrb UCSR0B=0xa;
sfrb UCSR0A=0xb;
sfrb UDR0=0xc;
sfrb SPCR=0xd;
sfrb SPSR=0xe;
sfrb SPDR=0xf;
sfrb PIND=0x10;
sfrb DDRD=0x11;
sfrb PORTD=0x12;
sfrb PINC=0x13;
sfrb DDRC=0x14;
sfrb PORTC=0x15;
sfrb PINB=0x16;
sfrb DDRB=0x17;
sfrb PORTB=0x18;
sfrb PINA=0x19;
sfrb DDRA=0x1a;
sfrb PORTA=0x1b;
sfrb EECR=0x1c;
sfrb EEDR=0x1d;
sfrb EEARL=0x1e;
sfrb EEARH=0x1f;
sfrw EEAR=0x1e;   // 16 bit access
sfrb UBRR0H=0x20;
sfrb UCSR0C=0x20;
sfrb WDTCR=0x21;
sfrb OCR2=0x22;
sfrb TCNT2=0x23;
sfrb ICR1L=0x24;
sfrb ICR1H=0x25;
sfrb ASSR=0x26;
sfrb TCCR2=0x27;
sfrb OCR1BL=0x28;
sfrb OCR1BH=0x29;
sfrw OCR1B=0x28;  // 16 bit access
sfrb OCR1AL=0x2a;
sfrb OCR1AH=0x2b;
sfrw OCR1A=0x2a;  // 16 bit access
sfrb TCNT1L=0x2c;
sfrb TCNT1H=0x2d;
sfrw TCNT1=0x2c;  // 16 bit access
sfrb TCCR1B=0x2e;
sfrb TCCR1A=0x2f;
sfrb SFIOR=0x30;
sfrb OCR0=0x31;
sfrb TCNT0=0x32;
sfrb TCCR0=0x33;
sfrb MCUCSR=0x34;
sfrb MCUCR=0x35;
sfrb EMCUCR=0x36;
sfrb SPMCR=0x37;
sfrb TIFR=0x38;
sfrb TIMSK=0x39;
sfrb GIFR=0x3a;
sfrb GICR=0x3b;
sfrb UBRR1H=0x3c;
sfrb UCSR1C=0x3c;
sfrb SPL=0x3d;
sfrb SPH=0x3e;
sfrb SREG=0x3f;
#pragma used-


// (C) 1998-2000 Pavel Haiduc, HP InfoTech S.R.L.


void delay_ms(unsigned int n);


// (C) 1998-2006 Pavel Haiduc, HP InfoTech S.R.L.


// (C) 1998-2002 Pavel Haiduc, HP InfoTech S.R.L.




void putchar(char c);
void puts(char *str);
void putsf(char flash *str);


void sprintf(char *str, char flash *fmtstr,...);
void vprintf (char flash * fmtstr, va_list argptr);
void vsprintf (char *str, char flash * fmtstr, va_list argptr);
signed char scanf(char flash *fmtstr,...);
signed char sscanf(char *str, char flash *fmtstr,...);



// (C) 1998-2005 Pavel Haiduc, HP InfoTech S.R.L.



char *strcatf(char *str1,char flash *str2);
char *strchr(char *str,char c);
signed char strcmp(char *str1,char *str2);
signed char strcmpf(char *str1,char flash *str2);
char *strcpy(char *dest,char *src);
char *strcpyf(char *dest,char flash *src);
unsigned char strcspn(char *str,char *set);
unsigned char strcspnf(char *str,char flash *set);
unsigned int strlenf(char flash *str);
char *strncat(char *str1,char *str2,unsigned char n);
char *strncatf(char *str1,char flash *str2,unsigned char n);
signed char strncmp(char *str1,char *str2,unsigned char n);
signed char strncmpf(char *str1,char flash *str2,unsigned char n);
char *strncpy(char *dest,char *src,unsigned char n);
char *strncpyf(char *dest,char flash *src,unsigned char n);
char *strpbrk(char *str,char *set);
char *strpbrkf(char *str,char flash *set);
signed char strpos(char *str,char c);
char *strrchr(char *str,char c);
char *strrpbrk(char *str,char *set);
char *strrpbrkf(char *str,char flash *set);
signed char strrpos(char *str,char c);
char *strstr(char *str1,char *str2);
char *strstrf(char *str1,char flash *str2);
unsigned char strspn(char *str,char *set);
unsigned char strspnf(char *str,char flash *set);
char *strtok(char *str1,char flash *str2);
 
void *memccpy(void *dest,void *src,char c,unsigned n);
void *memchr(void *buf,unsigned char c,unsigned n);
signed char memcmp(void *buf1,void *buf2,unsigned n);
signed char memcmpf(void *buf1,void flash *buf2,unsigned n);
void *memcpy(void *dest,void *src,unsigned n);
void *memcpyf(void *dest,void flash *src,unsigned n);
void *memmove(void *dest,void *src,unsigned n);
void *memset(void *buf,unsigned char c,unsigned n);

#pragma library string.lib

  CodeVisionAVR C Compiler
  (C) 1998-2000 Pavel Haiduc, HP InfoTech S.R.L.

  Prototypes for I2C bus master functions

  BEFORE #include -ING THIS FILE YOU
  MUST DECLARE THE I/O ADDRESS OF THE
  DATA REGISTER OF THE PORT AT WHICH
  THE I2C BUS IS CONNECTED AND
  THE DATA BITS USED FOR SDA & SCL

  EXAMPLE FOR PORTB:

    #asm
        .equ __i2c_port=0x18
        .equ __sda_bit=3
        .equ __scl_bit=4
    #endasm
    #include <i2c.h>
*/

void i2c_init(void);
unsigned char i2c_start(void);
void i2c_stop(void);
unsigned char i2c_read(unsigned char ack);
unsigned char i2c_write(unsigned char data);
#pragma used-

                                               
/* serial flags definition                                    */  
/**************************************************************/


/* IO port definition                                         */  
/**************************************************************/

/* matrix size const definition                               */  
/**************************************************************/

/* serial message const definition                            */  
/**************************************************************/

/***************************************************************/

/*
  CodeVisionAVR C Compiler
  (C) 1998-2005 Pavel Haiduc, HP InfoTech S.R.L.

  Prototypes for the Dallas Semiconductors
  DS1307 I2C Bus Real Time Clock functions

  BEFORE #include -ING THIS FILE YOU
  MUST DECLARE THE I/O ADDRESS OF THE
  DATA REGISTER OF THE PORT AT WHICH
  THE I2C BUS IS CONNECTED AND
  THE DATA BITS USED FOR SDA & SCL

  EXAMPLE FOR PORTB:

    #asm
        .equ __i2c_port=0x18
        .equ __sda_bit=3
        .equ __scl_bit=4
    #endasm
    #include <ds1307.h>
*/

  CodeVisionAVR C Compiler
  (C) 1998-2000 Pavel Haiduc, HP InfoTech S.R.L.

  Prototypes for I2C bus master functions

  BEFORE #include -ING THIS FILE YOU
  MUST DECLARE THE I/O ADDRESS OF THE
  DATA REGISTER OF THE PORT AT WHICH
  THE I2C BUS IS CONNECTED AND
  THE DATA BITS USED FOR SDA & SCL

  EXAMPLE FOR PORTB:

    #asm
        .equ __i2c_port=0x18
        .equ __sda_bit=3
        .equ __scl_bit=4
    #endasm
    #include <i2c.h>
*/

#pragma used+

void rtc_write(unsigned char address,unsigned char data);
void rtc_init(unsigned char rs,unsigned char sqwe,unsigned char out);
void rtc_get_time(unsigned char *hour,unsigned char *min,unsigned char *sec);
void rtc_set_time(unsigned char hour,unsigned char min,unsigned char sec);
void rtc_get_date(unsigned char *date,unsigned char *month,unsigned char *year);
void rtc_set_date(unsigned char date,unsigned char month,unsigned char year);

#pragma library ds1307.lib

static unsigned char     *    start_mem;         

bit is_stopping = 0;    
bit key_pressed = 0;   
bit is_half_top = 1;

unsigned long dw_temp;         
    

static unsigned int  scroll_updown = 0;                                   
static unsigned int  tick_count  = 0;       
static unsigned char       frame_index = 0;   
static unsigned char       scroll_step = 0;
static unsigned int  text_length = 0;              
static unsigned char       scroll_rate = 20; 
static unsigned char       scroll_temp = 2   ;
static unsigned char       scroll_type = 4;            
             
unsigned char       rx_message = 0    ;
unsigned int  rx_wparam  = 0;
unsigned int  rx_lparam  = 0;
// [0x55][0x55][0x55][rx_message][rx_wparam][rx_lparam]
                            
extern void send_echo_msg();    
extern unsigned char      eeprom_read(unsigned char      deviceID, unsigned int address);
extern void eeprom_write(unsigned char      deviceID, unsigned int address, unsigned char      data);
extern unsigned int eeprom_read_w(unsigned char      deviceID, unsigned int address);
extern void eeprom_write_w(unsigned char      deviceID, unsigned int address, unsigned int data);
extern void eeprom_write_page(unsigned char      deviceID, unsigned int address, unsigned char     *    buffer, unsigned char      page_size);
extern void eeprom_read_page(unsigned char      deviceID, unsigned int address, unsigned char     *    buffer, unsigned char      page_size);

static void _doScroll();   
void LoadFrame(unsigned char      index);
void BlankRAM(unsigned char     *    start_addr,unsigned char     *    end_addr);

// Timer 0 overflow interrupt service routine , 40.5 us per tick                 
///////////////////////////////////////////////////////////////
interrupt [18] void timer0_ovf_isr(void)
{       
    TCNT0 = 0x05;       // 1ms = 4*250 = 1000 us
    ++tick_count;    
}

// static function(s) for led matrix display panel
///////////////////////////////////////////////////////////////

{                                 
    for (x=0; x< 160; x++){         
		PORTB        = start_mem[(4)*(x) + 0];       		
		PORTD.3      = 1;
		PORTD.3      = 0;					         
	}         
	  
    PORTD.4      = 0;     
         
        PORTB        = start_mem[(4)*(x) + 1];       		
		PORTD.3      = 1;
		PORTD.3      = 0;	
	}
	           
    PORTD.5      = 0;    
         
        PORTB        = start_mem[(4)*(x) + 2];       		
		PORTD.3      = 1;
		PORTD.3      = 0;	
	}
	           
    PORTE.2      = 0;                
} 

{                                        	               
    for (x=0; x< 160; x++){  
        {    temp[0] = (unsigned long)start_mem[((unsigned int)4)*(x) + 0];    temp[1] = (unsigned long)start_mem[((unsigned int)4)*(x) + 1];    temp[2] = (unsigned long)start_mem[((unsigned int)4)*(x) + 2];    temp[3] = (unsigned long)start_mem[((unsigned int)4)*(x) + 3];    dw_temp = ~((temp[0]&0x000000FF) | ((temp[1]<<8)&0x0000FF00) |               ((temp[2]<<16)&0x00FF0000) | ((temp[3]<<24)&0xFF000000));    if (is_half_top){        dw_temp = dw_temp>>scroll_updown;    }    else{        dw_temp = dw_temp<<scroll_updown;    }};
		PORTB        = ~(unsigned char     )(dw_temp & 0x000000ff);       		
		PORTD.3      = 1;
		PORTD.3      = 0;					         
	}         
	  
    PORTD.4      = 0;     
         
        {    temp[0] = (unsigned long)start_mem[((unsigned int)4)*(x) + 0];    temp[1] = (unsigned long)start_mem[((unsigned int)4)*(x) + 1];    temp[2] = (unsigned long)start_mem[((unsigned int)4)*(x) + 2];    temp[3] = (unsigned long)start_mem[((unsigned int)4)*(x) + 3];    dw_temp = ~((temp[0]&0x000000FF) | ((temp[1]<<8)&0x0000FF00) |               ((temp[2]<<16)&0x00FF0000) | ((temp[3]<<24)&0xFF000000));    if (is_half_top){        dw_temp = dw_temp>>scroll_updown;    }    else{        dw_temp = dw_temp<<scroll_updown;    }};
		PORTB        = ~(unsigned char     )(dw_temp>>8 & 0x000000ff);  
		PORTD.3      = 1;
		PORTD.3      = 0;				
	}
	           
    PORTD.5      = 0;    
         
        {    temp[0] = (unsigned long)start_mem[((unsigned int)4)*(x) + 0];    temp[1] = (unsigned long)start_mem[((unsigned int)4)*(x) + 1];    temp[2] = (unsigned long)start_mem[((unsigned int)4)*(x) + 2];    temp[3] = (unsigned long)start_mem[((unsigned int)4)*(x) + 3];    dw_temp = ~((temp[0]&0x000000FF) | ((temp[1]<<8)&0x0000FF00) |               ((temp[2]<<16)&0x00FF0000) | ((temp[3]<<24)&0xFF000000));    if (is_half_top){        dw_temp = dw_temp>>scroll_updown;    }    else{        dw_temp = dw_temp<<scroll_updown;    }};
		PORTB        = ~(unsigned char     )(dw_temp>>16 & 0x000000ff);  
		PORTD.3      = 1;
		PORTD.3      = 0;				
	}
	           
    PORTE.2      = 0;
    

{   
    if (scroll_type == 0 || 
        scroll_type == 1 ||
        scroll_type == 4){
	    _putData_0();	            	
	}
	else if (scroll_type == 2 ||
	    scroll_type == 3 ||
	    scroll_type == 5 ||
	    scroll_type == 6 ){
	    _putData_1();	            	
	}
}     
                                                                                  
{
  if (key_pressed==1){
    is_stopping =1;
    return;
  }             
  if (tick_count > scroll_rate){    
    switch (scroll_type)
    {
    case 0:    
        if (scroll_step==0){           
            if (scroll_rate> 2   ){
                scroll_temp = scroll_rate;
                scroll_rate = 2   ;
            }
            start_mem += 4;
            if (start_mem ==(0x500        + 160*4)    +4*(160)){
                scroll_step++;
            }
        }
        else if (scroll_step==1){  
            if (++scroll_count > 100   ){   
                scroll_step++;         
                scroll_rate = scroll_temp;         
            }
        }  
        else if (scroll_step==2){  
            start_mem += 4;
            if (start_mem > (0x500        + 160*4)    +4*(text_length+160+32)){                  
       	        LoadFrame(++frame_index);
           	}
        }              
        break;
    case 1:
        if (scroll_step==0){   
            start_mem += 4;
            if (start_mem ==(0x500        + 160*4)    +4*(160)){
                scroll_step++;
            }
        }
        else if (scroll_step==1){  
            if (++scroll_count > 100   ){   
                scroll_step++;  
                scroll_rate = 2   ;                                
            }
        }  
        else if (scroll_step==2){  
            start_mem -= 4;
            if (start_mem <= (0x500        + 160*4)   ){                  
       	        LoadFrame(++frame_index);
           	}
        }  
        break;                
    case 2:                             
       	if (scroll_step==0){
            if (--scroll_updown <=0){                
                scroll_step++;                
                is_half_top =1;   
            }
        }
        else if (scroll_step==1){  
            if (++scroll_count > 100   ){   
                scroll_step++;
                scroll_updown = 0;                  
            }
        }        
        else{
            start_mem += 4;
            if (start_mem > (0x500        + 160*4)    +4*(text_length+160+32)){                  
       	        LoadFrame(++frame_index);
           	}
        }  	  
        break;
    case 3:   
        if (scroll_step==0){
            if (--scroll_updown <=0){                
                scroll_step++;                
                is_half_top =0;   
            }
        }
        else if (scroll_step==1){                  
            if (++scroll_count > 100   ){   
                scroll_step++;                
                scroll_updown = 0;
            }
        }
        else{
            start_mem += 4;
            if (start_mem > (0x500        + 160*4)    +4*(text_length+160+32)){                  
       	        LoadFrame(++frame_index);
           	}
        }  	  
        break;   
    case 5:
        if (scroll_step==0){
            if (--scroll_updown <=0){                
                scroll_step++;                
                is_half_top =1;   
            }
        }
        else if (scroll_step==1){  
            if (++scroll_count > 100   ){   
                scroll_step++;                  
            }
        }        
        else if (scroll_step==2){
            if (++scroll_updown >=16            ){                
                scroll_step =0;
                scroll_count=0;                
                is_half_top =0; 
                start_mem += 4*160;                                  
                if (start_mem >= ((0x500        + 160*4)    +4*(text_length+160))){
                    LoadFrame(++frame_index);
                }  
            }
        }
        	  
    case 6:    
        if (scroll_step==0){
            if (--scroll_updown <=0){                
                scroll_step++;                
                is_half_top =0;   
            }
        }
        else if (scroll_step==1){  
            if (++scroll_count > 100   ){   
                scroll_step++;                  
            }
        }        
        else if (scroll_step==2){
            if (++scroll_updown >=16            ){                
                scroll_step =0;
                scroll_count=0;                
                is_half_top =1; 
                start_mem += 4*160;                                  
                if (start_mem >= ((0x500        + 160*4)    +4*(text_length+160))){
                    LoadFrame(++frame_index);
                }  
            }
        }       
        break;              
    case 4:   
        start_mem += 4;
        if (start_mem > (0x500        + 160*4)    +4*(text_length+160+32))             
   	    {         
   	        frame_index++;         
   	        LoadFrame(frame_index);
       	}            	
        break;  
    case 7:
        frame_index++;
        LoadFrame(frame_index);
        break;  
    default:
        break;
    }
	tick_count = 0;
	if (frame_index >= 4) frame_index=0;
    		
             
////////////////////////////////////////////////////////////////////
// General functions
//////////////////////////////////////////////////////////////////// 
                                                                            
{
    unsigned char      devID = 0xa0;    
    unsigned int base = 0;   // base address
    devID += index<<1;                 
    if (index >=4){
        base = 0x8000;    
    }                 
    devID &= 0xF7;      // clear bit A3 
    
    i2c_init();
    PORTB.4 = 1;
    scroll_rate = eeprom_read(devID, (unsigned int)base+0);    
    scroll_type = eeprom_read(devID, (unsigned int)base+1);    
    text_length = eeprom_read_w(devID, (unsigned int)base+2); 
    printf("line=%d rate=%d type=%d len=%d\r\n",index,scroll_rate,scroll_type,text_length);
    if (text_length > (3936 -160)	){
        text_length= 0;            
    }
    if (scroll_type > 7){
        scroll_type = 7;
    }          
    if (scroll_rate > 100           ){
        scroll_rate = 0;
    }
    PORTB.4 = 0;   
}
                       
{
    unsigned char      devID = 0xa0;    
    unsigned int base = 0;   // base address
    devID += index<<1;                 
    if (index >=4){
        base = 0x8000;    
    }                 
    devID &= 0xF7;      // clear bit A3 
    
    PORTB.4 = 1;   
    eeprom_write_w(devID, base+2,text_length); 
    PORTB.4 = 0;   
}

{                     
    unsigned char      devID = 0xa0;    
    unsigned int base = 0;   // base address
    devID += index<<1;                 
    if (index >=4){
        base = 0x8000;    
    }                 
    devID &= 0xF7;      // clear bit A3  
    i2c_init();
    PORTB.4 = 1;  
    eeprom_write(devID, base+0,rate);    
    eeprom_write(devID, base+1,type);    
    PORTB.4 = 0;       
}

{                             
    unsigned char     *    temp = 0;     
    unsigned char      devID = 0xa0;
    unsigned int base = 0;   // base address
    devID += index<<1;                 
    if (index >=4){
        base = 0x8000;    
    }         				
    temp = address;         
        
        return; // invalid param 
    length = (unsigned int)address+4*(160+length);         
    if (length%64   )
        length = 64   *(length/64   ) + 64   ;  
    // init I2C bus
    i2c_init();
    PORTB.4 = 1;        
    
    {   
        #asm("WDR");;                          	                                              
        eeprom_write_page( devID, base+(unsigned int)temp, (unsigned char     *   )temp, 64   );	      
    }       
        
}
                      
{                         
    unsigned char     *    temp = 0;          
    unsigned char      devID = 0xa0;
    unsigned int base = 0;   // base address
    devID += index<<1;                 
    if (index >=4){
        base = 0x8000;    
    }       				
    temp = address;                 

        return; // invalid param
    length = (unsigned int)address+4*(160+length);         
    if (length%64   )
        length = 64   *(length/64   ) + 64   ;  
    // init I2C bus
    i2c_init();
    PORTB.4 = 1;             
 
    {
        eeprom_read_page( devID, base+(unsigned int)temp, (unsigned char     *   )temp, 64    );	                                   
        #asm("WDR");;     
    }             

}

{                 
    if (index >= 4) index=0;  

    if (scroll_type >=7){
        return;           
    }                   
    
    LoadToRAM((unsigned char     *   )(0x500        + 160*4)   ,text_length,index);
    scroll_count = 0;
    is_stopping = 0; 
    scroll_step = 0;
    scroll_updown = 0;
    switch (scroll_type)
    {
    case 0:
    case 1:
        start_mem = (unsigned char     *   )(0x500        + 160*4)   ; 
        break;     
    case 5:
    case 2: 
        is_half_top =0;
        scroll_updown = 16            ;                            
        start_mem = (unsigned char     *   )(0x500        + 160*4)    + (160<<2); 
        break;       
    case 6:
    case 3:       
        is_half_top =1; 
        scroll_updown = 16            ;                            
        start_mem = (unsigned char     *   )(0x500        + 160*4)    + (160<<2); 
        break;  
    case 4:
        start_mem = (unsigned char     *   )(0x500        + 160*4)   ;
        break;
    default: 
        break;
    }                   
    if (key_pressed==1){
        start_mem = (unsigned char     *   )(0x500        + 160*4)    + (160<<2);
    }           
    PORTD=0xFF;       
    DDRD=0x38;
}

{
    unsigned char     *    temp = 0;          
    unsigned int i =0;     				
    temp   = address;    
    PORTB.4 = 1;
    for (i =0; i< (length<<2); i++)         
    {                          
        unsigned char      data = 0;
        data = ~getchar();
        *temp = data;
        temp++;
        #asm("WDR");;                                     
    }              
    PORTB.4 = 0;
}
                      
{        
    unsigned char     *    temp = 0x500    ;
    for (temp = start_addr; temp<= end_addr; temp++)    
        *temp = 0xFF;             
}

// END static function(s)
///////////////////////////////////////////////////////////////


{
// Declare your local variables here
// Crystal Oscillator division factor: 1  
#pragma optsize-
(*(unsigned char *) 0x61)=0x80;
(*(unsigned char *) 0x61)=0x00;

DDRA=0xFF;

DDRB=0xFF;

DDRC=0xFF;

DDRD=0x38; 

DDRE.0=0;

DDRE.2=1;

// Clock source: System Clock
// Clock value: 250.000 kHz
// Mode: Normal top=FFh
// OC0 output: Disconnected
TCCR0=0x03;     // 4 us per tick
TCNT0=0x05;     // 1ms = 4*250
OCR0=0x00;      // 255 -250 = TCNT0

UCSR0B=0x98;
UCSR0C=0x86;
UBRR0H=0x00;
UBRR0L=0x67;      //  16 MHz     

// Upper page wait state(s): None
MCUCR=0x80;
EMCUCR=0x00;     

TIMSK=0x02;
(*(unsigned char *) 0x7d)=0x00;

// i2c_init();

// Square wave output on pin SQW/OUT: Off
// SQW/OUT pin state: 1
// rtc_init(3,0,1);

//rtc_init(3,0,1); // init RTC DS1307  
//rtc_set_time(15,2,0);
//rtc_set_date(9,5,6);    
                
// Watchdog Timer Prescaler: OSC/2048k     
WDTCR=0x1F;
WDTCR=0x0F;
}

{      
    start_mem = (unsigned char     *   )(0x500        + 160*4)   ;                    

       
    BlankRAM((unsigned char     *   )0x500    ,(unsigned char     *   )0x8000);  
    
    delay_ms(50);
    PORTB.4 = 1;
    delay_ms(50);
    PORTB.4 = 0;
    delay_ms(500);    
    PORTB.4 = 1;
                
    LoadFrame(frame_index);
        
    printf("cuong3ihut@yahoo.com - 0915651001\r\n");
    printf("Release date: 09/02/2007");
}

{
   	#asm("cli"); 
    #asm("WDR");;

    switch (rx_message)
    {                  
    case 2 :
        {                
            text_length = rx_wparam;            
            frame_index = rx_lparam&0x0F;   
            BlankRAM((unsigned char     *   )0x500    ,(unsigned char     *   )0x8000);
            SerialToRAM((unsigned char     *   )(0x500        + 160*4)   +4*(160),text_length);                
			start_mem = (unsigned char     *   )(0x500        + 160*4)   +4*(160);				
			SaveToEEPROM((unsigned char     *   )(0x500        + 160*4)   ,text_length,rx_lparam);
			SaveTextLength(rx_lparam);							  
        }				
        break;           
    case 3:
        {
        }
        break;   
    case 13: 
        {               
            SaveConfig(rx_wparam&0x0FF,rx_wparam>>8,rx_lparam); 
        }
        break;    
    case 7 :     
    case 11:  
        {                                                          
            SaveTextLength(rx_lparam);              
            SaveToEEPROM((unsigned char     *   )(0x500        + 160*4)   ,text_length,rx_lparam);
        }
        break;         
    case 6 :    
    case 10:
        {
            LoadConfig(rx_lparam);                               
            LoadToRAM((unsigned char     *   )(0x500        + 160*4)   ,text_length,rx_lparam); 
            start_mem = (unsigned char     *   )(0x500        + 160*4)   +4*(160);
        }
        break;  
    case 16  :
        power_off = rx_wparam&0x01;
        break;     
    default:
        break;
    }        
    PORTD=0xFF;         
    DDRD=0x38;       
    send_echo_msg();            
    rx_message = 0    ;
    #asm("sei");        
}           
////////////////////////////////////////////////////////////////////////////////
// MAIN PROGRAM
////////////////////////////////////////////////////////////////////////////////
void main(void)
{         
    if (MCUCSR & 8){
        // Watchdog Reset
        MCUCSR&=0xE0;  
        reset_serial(); 
    }
    else {      
        MCUCSR&=0xE0;
    }                                     
     
    #asm("sei");     

        if (PINE.0      ==0){
            if (key_pressed==0){
                delay_ms(100);
                if (PINE.0      ==0){                           
                    printf("KEY PRESSED\r\n");                
                    key_pressed =1; 
                    LoadFrame(0);                             
                }                                                       
            }
        }
        else{   
            if (key_pressed==1){                   
                delay_ms(100);
                if (PINE.0      ==1){                
                    key_pressed =0; 
                    LoadFrame(frame_index);       
                }
            }     
        }       
        if (rx_message != 0    ){   
            ProcessCommand();   
        }
        else{                      
            if (!is_stopping){
                _displayFrame();
            }
            _doScroll();                         
        }
        #asm("WDR");;
    };

                         