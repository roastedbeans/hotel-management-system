#include <xc.h>
#include <math.h>

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

void dispHeader();
void delay(int timer);
void dispLCD();
void dataCtrl(unsigned char DATA);
void dispSTR(char STR[20]);
void initLCD();
void instCtrl(unsigned char INST);
void toogleFlag();
int flagStart = 0;
int flagPause = 0;
int count_flag = 0;
int minutes = 0;
int seconds = 0;
int dispMin = 0;
int dispSec = 0;
int dataRead = 0;

void main(void)
{
	OPTION_REG = 0x43;
	INTE = 1;
	INTF = 0;
	T0IE = 1;
	T0IF = 0;
	GIE = 1;	

	ADCON1 = 0x06;
	CMCON = 0x07;
	TRISA = 0x00;
	TRISB = 0x01;
	TRISC = 0x00;
	TRISD = 0x0F;

	dispHeader();

		while(1)
	{
		if(RB0 == 1)
			dispLCD();
	}
}


void beginCount()
{	
	instCtrl(0x94);
	char header3[20] = "Starting...     ";
	dispSTR(header3);
	for(seconds = minutes*60;seconds >= 0;seconds--)
	{	
		dispMin = (seconds/60);
		dispSec = (seconds%60);
		
		int secLSB;
		secLSB = dispSec%10;
		int secMSB;
		secMSB = dispSec/10;
		secMSB = secMSB%10;
		
		instCtrl(0xC0);
		dataCtrl(dispMin+48);		
		dataCtrl(':');
		dataCtrl(secMSB+48);
		dataCtrl(secLSB+48);		

		delay(122);
		if(flagStart == 0)
		{
			break;
		}
		while(flagPause == 1)
		{
		}
	}
	minutes = 0;
	seconds = 0;
	dispHeader();
}
//instCtrl(0x80)
//instCtrl(0xC0)
//instCtrl(0x94)
//instCtrl(0xD4)
//122 for 1s ; 98 for 0.8s || sec/.008196

void instCtrl(unsigned char INST)
{
	PORTC = INST;
	RA0 = 0;
	RA2 = 0;
	RA1 = 1;
	delay(61);
	RA1 = 0;
}

void initLCD()
{
	delay(30);
	instCtrl(0x38); // function set: 8-bit; dual-line
	instCtrl(0x08); // display off
	instCtrl(0x01); // display clear
	instCtrl(0x06); // entry mode: increment; shift off
	instCtrl(0x0E); // display on; cursor on; blink off
}

void dataCtrl(unsigned char DATA)
{
	PORTC = DATA;
	RA0 = 1;
	RA2 = 0;
	RA1 = 1;
	delay(1);
	RA1 = 0;
}

void dispLCD()
{
	int DATA = dataRead;
	if(DATA < 3)
	{
		DATA += 1;
	}
	else if (DATA > 6 && DATA < 11)
	{
		DATA -= 1;
	}
	else if(DATA > 3 && DATA <= 6)
	{
		DATA = DATA;
	}
	else if(DATA == 13)
	{
		DATA = 0;
	}
	else
	{
		DATA = DATA;
	}
	
	if(flagStart == 0)
	{
		minutes = DATA;
		instCtrl(0xC0);
		dataCtrl(minutes+48);
	}
	switch(DATA)
	{
		case 12:
			beginCount();
			break;
		case 14:
			flagPause = 1;
			break;
		default:
			break;
	}
}

void dispHeader()
{
	flagStart = 0;
	initLCD();
	instCtrl(0x80);
	char header[20] = "Sample Header";
	dispSTR(header);
	instCtrl(0xC0);
	char header2[20] = "0:00";
	dispSTR(header2);
	instCtrl(0x94);
	char header3[20] = "Press * to Start";
	dispSTR(header3);
}

void dispSTR(char STR[20])
{
	for(int i = 0;;i++)
	{
		if(STR[i] != '\0')
		{
			dataCtrl(STR[i]);
		}
		else
		{
			return;
		}
	}
}

void delay(int timer)
{
    while(count_flag < timer)
    {
    }
    count_flag = 0;
}

void interrupt ISR()
{
	GIE = 0;
	if(INTF)
	{
		dataRead = PORTD & 0x0F;
		toogleFlag();
		INTF = 0;
	}
	else if(T0IF)
	{
		count_flag++;
		T0IF = 0;
	}
	GIE = 1;
}

void toogleFlag()
{
	if(dataRead == 12)
	{
		if(flagStart == 0)
			flagStart = 1;

		else if(flagStart == 1)
			flagStart = 0;
	}
	
	if(dataRead == 14)
	{
		if(flagPause == 0)
			flagPause = 1;

		else if(flagPause == 1)
			flagPause = 0;
	}
	
}