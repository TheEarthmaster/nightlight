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

volatile bool enable_leds_flag = false;
volatile bool old_led_state_flag = false;

uint16_t light_level_result;


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
    
    // Orginally for cap touch debouncing necessitated by heartbeat signal
    // __delay_ms(250);
    if (INTCONbits.IOCIE) {
     
        INTCONbits.IOCIE = 0;
        ANALOG_ERROR_LED_PIN = 0;
        
        enable_leds_flag = false;
        PIR1bits.TMR1IF = 0;
        
    }
    
    else {
     
        INTCONbits.IOCIE = 1;
        ANALOG_ERROR_LED_PIN = 1;
        
    }
    
    
    INTCONbits.INTF = 0;
    
}

void PIRSensorISR(void) {
 
    // __delay_ms(250);
    
    ADC_SelectChannel(channel_AN10);
    ADC_StartConversion();

    while(!ADC_IsConversionDone());
    light_level_result = ADC_GetConversionResult();
    
    if(light_level_result >= 0x299)
    {
    
        enable_leds_flag = true;

        TMR1_StopTimer();
    
        // clear fade away timer
        TMR1_WriteTimer(0);

        // start fade away timer
        TMR1_StartTimer();

    }
    
    INTCONbits.IOCIF = 0;
     
}

void fadeAwayISR(void) {

    enable_leds_flag = false;
    PIR1bits.TMR1IF = 0;
    
}
/*
                         Main application
 */
void main(void)
{
    // initialize the device
    SYSTEM_Initialize();

    TMR1_StopTimer();
    TMR1_WriteTimer(0);
    
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
    IOCBF2_SetInterruptHandler(PIRSensorISR);
    TMR1_SetInterruptHandler(fadeAwayISR);
    
    RESET_LED_PIN = 0;
    
    setLEDBrightness(0);
    
    __delay_ms(100);
    
    LED_ENABLE_PIN = 0;
    
    ANALOG_ERROR_LED_PIN = 1;
    
    while (1)
    {
        
        
        
        if(PIR_OUT_PIN == 1) {
         
            TMR1_StopTimer();
    
            // clear fade away timer
            TMR1_WriteTimer(0);

            // start fade away timer
            TMR1_StartTimer();
            
        }
        
        // Add your application code
        
        if (enable_leds_flag == true && old_led_state_flag == false) {
            
            fadeLEDsUp();
            old_led_state_flag = enable_leds_flag;
            
        }
        
        if (enable_leds_flag == false && old_led_state_flag == true) {
            
            fadeLEDsDown();
            old_led_state_flag = enable_leds_flag;
            TMR1_StopTimer();
            TMR1_WriteTimer(0);


            
        }
        
        
    }
}
/**
 End of File
*/