//Deviec:FT60E01X
//-----------------------Variable---------------------------------
		_PA4		EQU		05H
		_PA5		EQU		05H
		_TRISA2		EQU		85H
//		writing@ICaddforwrite		EQU		78H
//		writing@ICaddforwrite		EQU		78H
//		writing@hadd		EQU		75H
//		writing@hdata		EQU		76H
//		writing@ldata		EQU		77H
//		writing@ICaddforwrite		EQU		78H
//		IIC_Send_Byte@txd		EQU		73H
//		IIC_Send_Byte@t		EQU		74H
//		IIC_Send_Byte@txd		EQU		73H
//		IIC_Send_Byte@txd		EQU		73H
//		DelayUs@Time		EQU		70H
//		DelayUs@a		EQU		71H
//		DelayUs@Time		EQU		70H
//		DelayUs@Time		EQU		70H
//-----------------------Variable END---------------------------------

		LJUMP 	3FEH 			//0000 	3BFE
		ORG		038AH
		STR 	70H 			//038A 	01F0

		//;Radio.C: 98: unsigned char a;
		//;Radio.C: 99: for(a=0;a<Time;a++)
		CLRR 	71H 			//038B 	0171
		LDR 	70H,0 			//038C 	0870
		SUBWR 	71H,0 			//038D 	0C71
		BTSC 	STATUS,0 		//038E 	1403
		RET		 					//038F 	0004

		//;Radio.C: 100: {
		//;Radio.C: 101: __nop();
		NOP		 					//0390 	0000
		INCR	71H,1 			//0391 	09F1
		LJUMP 	38CH 			//0392 	3B8C

		//;Radio.C: 233: (void)POWER_INITIAL();
		LCALL 	3AAH 			//0393 	33AA

		//;Radio.C: 234: writing(0x90,23,0xa8,0XD0);
		LDWI 	17H 			//0394 	2A17
		STR 	75H 			//0395 	01F5
		LDWI 	A8H 			//0396 	2AA8
		STR 	76H 			//0397 	01F6
		LDWI 	D0H 			//0398 	2AD0
		STR 	77H 			//0399 	01F7
		LDWI 	90H 			//039A 	2A90
		LCALL 	39DH 			//039B 	339D

		//;Radio.C: 235: while(1)
		//;Radio.C: 236: {
		LJUMP 	39CH 			//039C 	3B9C
		STR 	78H 			//039D 	01F8

		//;Radio.C: 222: IIC_Start();
		LCALL 	3B9H 			//039E 	33B9

		//;Radio.C: 223: IIC_Send_Byte(ICaddforwrite);
		LDR 	78H,0 			//039F 	0878
		LCALL 	3D7H 			//03A0 	33D7

		//;Radio.C: 224: IIC_Send_Byte(hadd);
		LDR 	75H,0 			//03A1 	0875
		LCALL 	3D7H 			//03A2 	33D7

		//;Radio.C: 225: IIC_Send_Byte(hdata);
		LDR 	76H,0 			//03A3 	0876
		LCALL 	3D7H 			//03A4 	33D7

		//;Radio.C: 226: IIC_Send_Byte(ldata);
		LDR 	77H,0 			//03A5 	0877
		LCALL 	3D7H 			//03A6 	33D7

		//;Radio.C: 227: IIC_Stop();
		LCALL 	3C8H 			//03A7 	33C8

		//;Radio.C: 228: DelayUs(5);
		LDWI 	5H 			//03A8 	2A05
		LJUMP 	38AH 			//03A9 	3B8A

		//;Radio.C: 78: OSCCON = 0B01110000;
		LDWI 	70H 			//03AA 	2A70
		BSR 	STATUS,5 		//03AB 	1A83
		STR 	FH 			//03AC 	018F

		//;Radio.C: 80: INTCON = 0;
		CLRR 	INTCON 			//03AD 	010B

		//;Radio.C: 81: OPTION = 0B00001000;
		LDWI 	8H 			//03AE 	2A08
		STR 	1H 			//03AF 	0181

		//;Radio.C: 83: PORTA = 0B00000000;
		BCR 	STATUS,5 		//03B0 	1283
		CLRR 	5H 			//03B1 	0105

		//;Radio.C: 84: TRISA = 0B00000100;
		LDWI 	4H 			//03B2 	2A04
		BSR 	STATUS,5 		//03B3 	1A83
		STR 	5H 			//03B4 	0185

		//;Radio.C: 86: WPUA = 0B00000100;
		STR 	15H 			//03B5 	0195

		//;Radio.C: 88: MSCKCON = 0B00000000;
		BCR 	STATUS,5 		//03B6 	1283
		CLRR 	1BH 			//03B7 	011B
		RET		 					//03B8 	0004

		//;Radio.C: 129: TRISA2 =0;
		BSR 	STATUS,5 		//03B9 	1A83
		BCR 	5H,2 			//03BA 	1105

		//;Radio.C: 130: PA4=1;
		BCR 	STATUS,5 		//03BB 	1283
		BSR 	5H,4 			//03BC 	1A05

		//;Radio.C: 131: PA5=1;
		BSR 	5H,5 			//03BD 	1A85

		//;Radio.C: 132: DelayUs(10);
		LDWI 	AH 			//03BE 	2A0A
		LCALL 	38AH 			//03BF 	338A

		//;Radio.C: 133: PA4=0;
		BCR 	STATUS,5 		//03C0 	1283
		BCR 	5H,4 			//03C1 	1205

		//;Radio.C: 134: DelayUs(10);
		LDWI 	AH 			//03C2 	2A0A
		LCALL 	38AH 			//03C3 	338A

		//;Radio.C: 135: PA5=0;
		BCR 	STATUS,5 		//03C4 	1283
		BCR 	5H,5 			//03C5 	1285

		//;Radio.C: 136: DelayUs(10);
		LDWI 	AH 			//03C6 	2A0A
		LJUMP 	38AH 			//03C7 	3B8A

		//;Radio.C: 146: TRISA2 =0;
		BSR 	STATUS,5 		//03C8 	1A83
		BCR 	5H,2 			//03C9 	1105

		//;Radio.C: 147: PA5=0;
		BCR 	STATUS,5 		//03CA 	1283
		BCR 	5H,5 			//03CB 	1285

		//;Radio.C: 148: PA4=0;
		BCR 	5H,4 			//03CC 	1205

		//;Radio.C: 149: DelayUs(10);
		LDWI 	AH 			//03CD 	2A0A
		LCALL 	38AH 			//03CE 	338A

		//;Radio.C: 150: PA5=1;
		BCR 	STATUS,5 		//03CF 	1283
		BSR 	5H,5 			//03D0 	1A85

		//;Radio.C: 151: DelayUs(10);
		LDWI 	AH 			//03D1 	2A0A
		LCALL 	38AH 			//03D2 	338A

		//;Radio.C: 152: PA4=1;
		BCR 	STATUS,5 		//03D3 	1283
		BSR 	5H,4 			//03D4 	1A05

		//;Radio.C: 153: DelayUs(10);
		LDWI 	AH 			//03D5 	2A0A
		LJUMP 	38AH 			//03D6 	3B8A
		STR 	73H 			//03D7 	01F3

		//;Radio.C: 179: unsigned char t;
		//;Radio.C: 180: TRISA2 =0;
		BSR 	STATUS,5 		//03D8 	1A83
		BCR 	5H,2 			//03D9 	1105

		//;Radio.C: 181: PA5=0;
		BCR 	STATUS,5 		//03DA 	1283
		BCR 	5H,5 			//03DB 	1285

		//;Radio.C: 182: for(t=0;t<8;t++)
		CLRR 	74H 			//03DC 	0174

		//;Radio.C: 183: {
		//;Radio.C: 184: if((txd&0x80)>>7)
		LDR 	73H,0 			//03DD 	0873
		STR 	72H 			//03DE 	01F2
		LDWI 	7H 			//03DF 	2A07
		BCR 	STATUS,0 		//03E0 	1003
		RRR	72H,1 			//03E1 	06F2
		ADDWI 	FFH 			//03E2 	27FF
		BTSS 	STATUS,2 		//03E3 	1D03
		LJUMP 	3E0H 			//03E4 	3BE0
		BTSS 	72H,0 			//03E5 	1C72
		LJUMP 	3EAH 			//03E6 	3BEA

		//;Radio.C: 185: PA4=1;
		BCR 	STATUS,5 		//03E7 	1283
		BSR 	5H,4 			//03E8 	1A05
		LJUMP 	3ECH 			//03E9 	3BEC

		//;Radio.C: 186: else
		//;Radio.C: 187: PA4=0;
		BCR 	STATUS,5 		//03EA 	1283
		BCR 	5H,4 			//03EB 	1205
		LDWI 	5H 			//03EC 	2A05

		//;Radio.C: 188: txd<<=1;
		BCR 	STATUS,0 		//03ED 	1003
		RLR 	73H,1 			//03EE 	05F3

		//;Radio.C: 189: DelayUs(5);
		LCALL 	38AH 			//03EF 	338A

		//;Radio.C: 190: PA5=1;
		BCR 	STATUS,5 		//03F0 	1283
		BSR 	5H,5 			//03F1 	1A85

		//;Radio.C: 191: DelayUs(5);
		LDWI 	5H 			//03F2 	2A05
		LCALL 	38AH 			//03F3 	338A

		//;Radio.C: 192: PA5=0;
		BCR 	STATUS,5 		//03F4 	1283
		BCR 	5H,5 			//03F5 	1285

		//;Radio.C: 193: DelayUs(5);
		LDWI 	5H 			//03F6 	2A05
		LCALL 	38AH 			//03F7 	338A
		LDWI 	8H 			//03F8 	2A08
		INCR	74H,1 			//03F9 	09F4
		SUBWR 	74H,0 			//03FA 	0C74
		BTSC 	STATUS,0 		//03FB 	1403
		RET		 					//03FC 	0004
		LJUMP 	3DDH 			//03FD 	3BDD
		CLRR 	STATUS 			//03FE 	0103
		LJUMP 	393H 			//03FF 	3B93
			END
