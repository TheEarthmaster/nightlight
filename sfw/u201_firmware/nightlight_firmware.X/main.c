/**
  Generated Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This is the main file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  Description:
    This header file provides implementations for driver APIs for all modules selected in the GUI.
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.77
        Device            :  PIC16F1518
        Driver Version    :  2.00
*/

/*
    (c) 2018 Microchip Technology Inc. and its subsidiaries. 
    
    Subject to your compliance with these terms, you may use Microchip software and any 
    derivatives exclusively with Microchip products. It is your responsibility to comply with third party 
    license terms applicable to your use of third party software (including open source software) that 
    may accompany Microchip software.
    
    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER 
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY 
    IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS 
    FOR A PARTICULAR PURPOSE.
    
    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP 
    HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO 
    THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL 
    CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT 
    OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS 
    SOFTWARE.
*/

#include "mcc_generated_files/mcc.h"
#include "pin_macros.h"

#include <stdbool.h>

bool enable_leds_flag = false;
bool old_led_state_flag = false;

// expects value between 0 and 100
void setLEDBrightness(uint8_t input_brightness) {
    
    // cap brightness at 100%
    if (input_brightness > 100) input_brightness = 100;
    
    // divide brightness by two to get to PWM resolution
    input_brightness /= 2;
    
    // load calculated brightness into PWM
    PWM2_LoadDutyValue(500 - input_brightness);
    
}

void fadeLEDsUp(void) {

    LED_ENABLE_PIN = 1;
    
    for (uint8_t value = 0; value < 100; value++) {

        setLEDBrightness(value);
        __delay_ms(20);

    }

}

void fadeLEDsDown(void) {
    
    for (uint8_t value = 100; value > 0; value--) {

        setLEDBrightness(value);
        __delay_ms(20);
        
    }

    LED_ENABLE_PIN = 0;
    
}

void capTouchPowerISR(void)
{
    
    INTERRUPT_GlobalInterruptDisable();
    
    enable_leds_flag = !(enable_leds_flag);
    
    __delay_ms(250);
    
    INTCONbits.INTF = 0;
    
    INTERRUPT_GlobalInterruptEnable();
}

/*
                         Main application
 */
void main(void)
{
    // initialize the device
    SYSTEM_Initialize();

    // When using interrupts, you need to set the Global and Peripheral Interrupt Enable bits
    // Use the following macros to:

    // Enable the Global Interrupts
    INTERRUPT_GlobalInterruptEnable();

    // Enable the Peripheral Interrupts
    INTERRUPT_PeripheralInterruptEnable();

    // Disable the Global Interrupts
    //INTERRUPT_GlobalInterruptDisable();

    // Disable the Peripheral Interrupts
    //INTERRUPT_PeripheralInterruptDisable();

    INT_SetInterruptHandler(capTouchPowerISR);
    
    RESET_LED_PIN = 0;
    
    setLEDBrightness(0);
    
    __delay_ms(100);
    
    LED_ENABLE_PIN = 0;
    
    
    while (1)
    {
        // Add your application code
        
        if (enable_leds_flag == true && old_led_state_flag == false) {
            
            fadeLEDsUp();
            old_led_state_flag = enable_leds_flag;
            
        }
        
        if (enable_leds_flag == false && old_led_state_flag == true) {
            
            fadeLEDsDown();
            old_led_state_flag = enable_leds_flag;
            
        }
        
        
    }
}
/**
 End of File
*/