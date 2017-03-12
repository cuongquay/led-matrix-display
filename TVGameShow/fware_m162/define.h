
#ifndef __DEFINE_H_
#define __DEFINE_H_

#include <mega162.h>     
#include <delay.h>        
#include <stdio.h>    
#include <string.h>              

/***************************************************************/
#define     __WATCH_DOG_
/**************************************************************/
/* serial flags definition                                    */  
/**************************************************************/

#define RXB8 1
#define TXB8 0
#define UPE 2
#define OVR 3
#define FE 4
#define UDRE 5
#define RXC 7

#define FRAMING_ERROR (1<<FE)
#define PARITY_ERROR (1<<UPE)
#define DATA_OVERRUN (1<<OVR)
#define DATA_REGISTER_EMPTY (1<<UDRE)
#define RX_COMPLETE (1<<RXC)

// USART Receiver buffer
#define RX_BUFFER_SIZE 8

/**************************************************************/
/* IO port definition                                         */  
/**************************************************************/
#define     CTRL_CLK        PORTB.5     // pin 0
#define     CTRL_DAT        PORTB.6     // pin 1
#define     CTRL_STB        PORTB.7     // pin 2    
                                          
#define     MAX_DIGIT       12

#define     UNKNOWN_MSG              0    
#define     LOAD_DATA_MSG	         1

#define     WAKEUP_CHAR              0x55
#define     ESCAPE_CHAR              0xFF
                                                   
#define     LED_STATUS          PORTB.4

/***************************************************************/
#define     BYTE                unsigned char     
#define     PBYTE               BYTE*   
#define     WORD                unsigned int
#define     BOOL                unsigned char
#define     TRUE                1
#define     FALSE               0
#define     LONG                long      
#define     UINT                unsigned int
/***************************************************************/

#endif //__DEFINE_H_