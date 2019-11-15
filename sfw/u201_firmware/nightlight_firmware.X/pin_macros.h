
// This is a guard condition so that contents of this file are not included
// more than once.  
#ifndef _PIN_MACROS_H
#define	_PIN_MACROS_H

#include <xc.h> // include processor files - each processor file is guarded.  

#define RESET_LED_PIN               LATAbits.LATA2

#define LED_ENABLE_PIN              LATBbits.LATB4

#define ANALOG_ERROR_LED_PIN        LATAbits.LATA1

#define PIR_OUT_PIN                 PORTBbits.RB2


#endif	/* _PIN_MACROS_H */

