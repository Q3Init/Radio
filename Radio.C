//Project: Radio.prj
// Device: FT60E01X
// Memory: Flash 1KX14b, EEPROM 256X8b, SRAM 64X8b
// Author: 
//Company: 
//Version:
//   Date: 
//===========================================================
//===========================================================
#include	"SYSCFG.h"
#include    "BK4802_IIC.h"

#define  LED        PA1
#define  KEY        PA2

//DEFAULT FERQ:TX=RX=439.725mh.uSING "BK4802NCalc.exe to calculate.
const int rxfreq[]={0x52BE,0xF850,0x0000};
const int txfreq[]={0x52C5,0x925F,0x0000};
const int rxreg[]={0x0300,0x8e04,0xF140,0xED00,0x17E0,0xe0e0,0x8543,0x0700,0xA066,0xFFFF,0xFFE0,0x07a0,0x9E3C,0x1F00,0xD1D1,0x200F,0x01FF,0xE000,0x0340};
const int txreg[]={0x7C00,0x0c04,0xF140,0xED00,0x3fE0,0xe0e0,0x8543,0x0700,0xA066,0xFFFF,0xffe0,0x061f,0x9e3c,0x1f00,0xd1C1,0x200F,0x01FF,0xE000,0x0c00};

static void Set_BK4802_Tx_config(void);
static void Set_BK4802_Rx_config(void);

void main()
{
	unsigned char i;
    static unsigned char key_state = 0;
    (void)POWER_INITIAL();
	/* Example Initialize the working status of BK4802 to RX */
	Set_BK4802_Rx_config();
    while(1)
    {
		/* Key press */
		if ((KEY == 0) && (key_state == 0)) { 
			DelayMs(30); /* Shake elimination */
            if (KEY == 0) {
				DelayMs(30);
				Set_BK4802_Tx_config();
				DelayMs(30);
                key_state = 1;
            } 
        }
        /* No keys to press */
        if ((KEY == 1) && (key_state == 1)) {
			DelayMs(30); /* Shake elimination */
            if (KEY == 1) {
				DelayMs(30);
				Set_BK4802_Rx_config();
				DelayMs(30);
                key_state = 0;
            }         
        }
    }
}

static void Set_BK4802_Tx_config(void)
{
	unsigned char i;
	/* Set the BK4802 register: 4-22 */
	for(i=4;i<=22;i++) {
	   writing(0x90,i,txreg[i-4],txreg[i-4]);
	}
	/* Set the BK4802 register: 2->1->0 */
 	for(i=5;i>2;i--) {
	   writing(0x90,i-3,txfreq[i-3],txfreq[i-3]);
	}
}

static void Set_BK4802_Rx_config(void)
{
	unsigned char i;
	/* Set the BK4802 register: 23 */
	writing(0x90,23,0xa8,0XD0);
	/* Set the BK4802 register: 4-22 */
	for(i=4;i<=22;i++) {
	   writing(0x90,i,rxreg[i-4],rxreg[i-4]);
	}
	/* Set the BK4802 register: 2->1->0 */
 	for(i=5;i>2;i--) {
	   writing(0x90,i-3,rxfreq[i-3],rxfreq[i-3]);
	}
}