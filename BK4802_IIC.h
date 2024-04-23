#ifndef __BK4802_IIC_H_
#define __BK4802_IIC_H_

#include	"SYSCFG.h"

#define  unchar     unsigned char 

#define  IIC_SDA	PA4
#define  IIC_SCL	PA5   

#define  SDA_OUT    TRISA2 =0
#define  SDA_IN	    TRISA2 =1

/*-------------------------------------------------
 *  函数名：POWER_INITIAL
 *	功能：  上电系统初始化
 *  输入：  无
 *  输出：  无
 --------------------------------------------------*/	
void POWER_INITIAL (void) 
{ 
    OSCCON = 0B01110000;				//IRCF=111=16MHz/4T=4MHz,0.25us
                                 
	INTCON = 0;  						//暂禁止所有中断
	OPTION = 0B00001000;				//Bit3=1,WDT MODE,PS=000=WDT RATE 1:1

	PORTA  = 0B00000000;					
	TRISA  = 0B00000100;				//PA输入输出 0-输出 1-输入
                                        //PA1-OUT PA2-IN PA4-OUT PA4-OUT
	WPUA   = 0B00000100;     			//PA端口上拉控制 1-开上拉 0-关上拉								
					 		            //开PA2上拉
	MSCKCON = 0B00000000;
}
/*-------------------------------------------------
 * 函数名：DelayUs
 * 功能：  短延时函数 --16M-4T--大概快1%左右.
 * 输入：  Time 延时时间长度 延时时长Time*2 Us
 * 输出：  无 
 -------------------------------------------------*/
void DelayUs(unsigned char Time)
{
	unsigned char a;
	for(a=0;a<Time;a++)
	{
		NOP();
	}
} 
/*---------------------------------------------------- 
 *  函数名：DelayMs
 *  功能：  短延时函数--16M-4T--大概快1%左右.
 *  输入：  Time 延时时间长度 延时时长Time ms
 *  输出：  无 
 ----------------------------------------------------*/
void DelayMs(unsigned char Time)
{
	unsigned char a,b;
	for(a=0;a<Time;a++)
	{
		for(b=0;b<5;b++)
		{
		 	DelayUs(98); 				//快1%
		}
	}
}
/*-------------------------------------------------
 * 函数名：IIC_Start
 * 功能：  产生IIC起始信号
 * 输入：  无
 * 输出：  无
 --------------------------------------------------*/
void IIC_Start(void)
{
	SDA_OUT;          //SDA线输出
	IIC_SDA=1;	  	  
	IIC_SCL=1;
	DelayUs(10);      
 	IIC_SDA=0;        //start:当CLK为高时，DATA由高变低 
	DelayUs(10);
	IIC_SCL=0;        //钳住I2C总线，准备发送或接收数据 
    DelayUs(10);
}	
/*-------------------------------------------------
 * 函数名：IIC_Stop
 * 功能：  产生IIC停止信号
 * 输入：  无
 * 输出：  无
 --------------------------------------------------*/
 void IIC_Stop(void)
{
	SDA_OUT;          //SDA线输出
	IIC_SCL=0;
	IIC_SDA=0;        //stop:当CLK为高时，DATA由低变高
 	DelayUs(10);
	IIC_SCL=1; 
    DelayUs(10);
	IIC_SDA=1;        //发送I2C总线结束信号
	DelayUs(10);							   	
}
/*-------------------------------------------------
 * 函数名：IIC_NAck
 * 功能：  不产生ACK应答
 * 输入：  无
 * 输出：  无
 --------------------------------------------------*/	    
void IIC_NAck(void)
{
	IIC_SCL=0;
	SDA_OUT;              //SDA线输出
	IIC_SDA=1;
	DelayUs(5);	
	IIC_SCL=1;
	DelayUs(5);	
	IIC_SCL=0;
}	
/*-------------------------------------------------
 * 函数名：IIC_Send_Byte
 * 功能：  IIC发送一个字节
 * 输入：  写入要发送的一个字节数据txd
 * 输出：  无
 --------------------------------------------------*/		  
void IIC_Send_Byte(unsigned char txd)
{                        
    unsigned char t;   
	SDA_OUT;	          //SDA线输出   
    IIC_SCL=0;            //拉低时钟开始数据传输
    for(t=0;t<8;t++)
    {              
		if((txd&0x80)>>7)
			IIC_SDA=1;
		else
			IIC_SDA=0;
		txd<<=1; 	  
		DelayUs(5);				  
		IIC_SCL=1;
		DelayUs(5);	
		IIC_SCL=0;	
		DelayUs(5);
    }	 
} 
/*-------------------------------------------------
 * 函数名：IIC_Read_Byte
 * 功能：  IIC读一个字节
 * 输入：  无
 * 输出：  读出存储器里面的数据并返回receive
 --------------------------------------------------*/
 unsigned char IIC_Read_Byte(void)
{
	unsigned char i,receive=0;
	SDA_IN;               //SDA设置为输入
    for(i=0;i<8;i++ )
	{
        IIC_SCL=0; 
        DelayUs(5);	
     	IIC_SCL=1;
        receive<<=1;
        if(IIC_SDA)receive++;   
		DelayUs(5);	
    }					 
    IIC_NAck();           //发送nACK
  
    return receive;
}
//Wrtie to BK4802N
void writing(char ICaddforwrite,char hadd,char hdata,char ldata)
{
    IIC_Start();
    IIC_Send_Byte(ICaddforwrite);
    IIC_Send_Byte(hadd);
    IIC_Send_Byte(hdata);
    IIC_Send_Byte(ldata);
    IIC_Stop();
    DelayUs(5);
}


#endif
