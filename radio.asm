//Deviec:FT60E01X
//-----------------------Variable---------------------------------
		_PA2		EQU		05H
		_PA4		EQU		05H
		_PA5		EQU		05H
		_TRISA2		EQU		85H
//		main@key_state		EQU		7AH
//		Set_BK4802_Tx_config@i		EQU		79H
//		Set_BK4802_Rx_config@i		EQU		79H
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
//		DelayMs@Time		EQU		72H
//		DelayMs@b		EQU		74H
//		DelayMs@a		EQU		73H
//		DelayMs@Time		EQU		72H
//		DelayMs@Time		EQU		72H
//		DelayUs@Time		EQU		70H
//		DelayUs@a		EQU		71H
//		DelayUs@Time		EQU		70H
//		DelayUs@Time		EQU		70H
//-----------------------Variable END---------------------------------

		LJUMP 	3FDH 			//0000 	3BFD
		LDWI 	0H 			//0001 	2A00
		STR 	PCLATH 			//0002 	018A
		LDR 	FSR,0 			//0003 	0804
		INCR	FSR,1 			//0004 	0984
		ADDWR 	PCL,1 			//0005 	0B82
		RETW 	0H 			//0006 	2100
		RETW 	0H 			//0007 	2100
		RETW 	7CH 			//0008 	217C
		RETW 	4H 			//0009 	2104
		RETW 	CH 			//000A 	210C
		RETW 	40H 			//000B 	2140
		RETW 	F1H 			//000C 	21F1
		RETW 	0H 			//000D 	2100
		RETW 	EDH 			//000E 	21ED
		RETW 	E0H 			//000F 	21E0
		RETW 	3FH 			//0010 	213F
		RETW 	E0H 			//0011 	21E0
		RETW 	E0H 			//0012 	21E0
		RETW 	43H 			//0013 	2143
		RETW 	85H 			//0014 	2185
		RETW 	0H 			//0015 	2100
		RETW 	7H 			//0016 	2107
		RETW 	66H 			//0017 	2166
		RETW 	A0H 			//0018 	21A0
		RETW 	FFH 			//0019 	21FF
		RETW 	FFH 			//001A 	21FF
		RETW 	E0H 			//001B 	21E0
		RETW 	FFH 			//001C 	21FF
		RETW 	1FH 			//001D 	211F
		RETW 	6H 			//001E 	2106
		RETW 	3CH 			//001F 	213C
		RETW 	9EH 			//0020 	219E
		RETW 	0H 			//0021 	2100
		RETW 	1FH 			//0022 	211F
		RETW 	C1H 			//0023 	21C1
		RETW 	D1H 			//0024 	21D1
		RETW 	FH 			//0025 	210F
		RETW 	20H 			//0026 	2120
		RETW 	FFH 			//0027 	21FF
		RETW 	1H 			//0028 	2101
		RETW 	0H 			//0029 	2100
		RETW 	E0H 			//002A 	21E0
		RETW 	0H 			//002B 	2100
		RETW 	CH 			//002C 	210C
		RETW 	0H 			//002D 	2100
		RETW 	3H 			//002E 	2103
		RETW 	4H 			//002F 	2104
		RETW 	8EH 			//0030 	218E
		RETW 	40H 			//0031 	2140
		RETW 	F1H 			//0032 	21F1
		RETW 	0H 			//0033 	2100
		RETW 	EDH 			//0034 	21ED
		RETW 	E0H 			//0035 	21E0
		RETW 	17H 			//0036 	2117
		RETW 	E0H 			//0037 	21E0
		RETW 	E0H 			//0038 	21E0
		RETW 	43H 			//0039 	2143
		RETW 	85H 			//003A 	2185
		RETW 	0H 			//003B 	2100
		RETW 	7H 			//003C 	2107
		RETW 	66H 			//003D 	2166
		RETW 	A0H 			//003E 	21A0
		RETW 	FFH 			//003F 	21FF
		RETW 	FFH 			//0040 	21FF
		RETW 	E0H 			//0041 	21E0
		RETW 	FFH 			//0042 	21FF
		RETW 	A0H 			//0043 	21A0
		RETW 	7H 			//0044 	2107
		RETW 	3CH 			//0045 	213C
		RETW 	9EH 			//0046 	219E
		RETW 	0H 			//0047 	2100
		RETW 	1FH 			//0048 	211F
		RETW 	D1H 			//0049 	21D1
		RETW 	D1H 			//004A 	21D1
		RETW 	FH 			//004B 	210F
		RETW 	20H 			//004C 	2120
		RETW 	FFH 			//004D 	21FF
		RETW 	1H 			//004E 	2101
		RETW 	0H 			//004F 	2100
		RETW 	E0H 			//0050 	21E0
		RETW 	40H 			//0051 	2140
		RETW 	3H 			//0052 	2103
		RETW 	C5H 			//0053 	21C5
		RETW 	52H 			//0054 	2152
		RETW 	5FH 			//0055 	215F
		RETW 	92H 			//0056 	2192
		RETW 	0H 			//0057 	2100
		RETW 	0H 			//0058 	2100
		RETW 	BEH 			//0059 	21BE
		RETW 	52H 			//005A 	2152
		RETW 	50H 			//005B 	2150
		RETW 	F8H 			//005C 	21F8
		RETW 	0H 			//005D 	2100
		RETW 	0H 			//005E 	2100
		ORG		02F9H
		STR 	70H 			//02F9 	01F0
		CLRR 	71H 			//02FA 	0171
		LDR 	70H,0 			//02FB 	0870
		SUBWR 	71H,0 			//02FC 	0C71
		BTSC 	STATUS,0 		//02FD 	1403
		RET		 					//02FE 	0004
		NOP		 					//02FF 	0000
		INCR	71H,1 			//0300 	09F1
		LJUMP 	2FBH 			//0301 	3AFB
		STR 	78H 			//0302 	01F8
		LCALL 	31EH 			//0303 	331E
		LDR 	78H,0 			//0304 	0878
		LCALL 	372H 			//0305 	3372
		LDR 	75H,0 			//0306 	0875
		LCALL 	372H 			//0307 	3372
		LDR 	76H,0 			//0308 	0876
		LCALL 	372H 			//0309 	3372
		LDR 	77H,0 			//030A 	0877
		LCALL 	372H 			//030B 	3372
		LCALL 	32DH 			//030C 	332D
		LDWI 	5H 			//030D 	2A05
		LJUMP 	2F9H 			//030E 	3AF9
		LDWI 	70H 			//030F 	2A70
		BSR 	STATUS,5 		//0310 	1A83
		STR 	FH 			//0311 	018F
		CLRR 	INTCON 			//0312 	010B
		LDWI 	8H 			//0313 	2A08
		STR 	1H 			//0314 	0181
		BCR 	STATUS,5 		//0315 	1283
		CLRR 	5H 			//0316 	0105
		LDWI 	4H 			//0317 	2A04
		BSR 	STATUS,5 		//0318 	1A83
		STR 	5H 			//0319 	0185
		STR 	15H 			//031A 	0195
		BCR 	STATUS,5 		//031B 	1283
		CLRR 	1BH 			//031C 	011B
		RET		 					//031D 	0004
		BSR 	STATUS,5 		//031E 	1A83
		BCR 	5H,2 			//031F 	1105
		BCR 	STATUS,5 		//0320 	1283
		BSR 	5H,4 			//0321 	1A05
		BSR 	5H,5 			//0322 	1A85
		LDWI 	AH 			//0323 	2A0A
		LCALL 	2F9H 			//0324 	32F9
		BCR 	STATUS,5 		//0325 	1283
		BCR 	5H,4 			//0326 	1205
		LDWI 	AH 			//0327 	2A0A
		LCALL 	2F9H 			//0328 	32F9
		BCR 	STATUS,5 		//0329 	1283
		BCR 	5H,5 			//032A 	1285
		LDWI 	AH 			//032B 	2A0A
		LJUMP 	2F9H 			//032C 	3AF9
		BSR 	STATUS,5 		//032D 	1A83
		BCR 	5H,2 			//032E 	1105
		BCR 	STATUS,5 		//032F 	1283
		BCR 	5H,5 			//0330 	1285
		BCR 	5H,4 			//0331 	1205
		LDWI 	AH 			//0332 	2A0A
		LCALL 	2F9H 			//0333 	32F9
		BCR 	STATUS,5 		//0334 	1283
		BSR 	5H,5 			//0335 	1A85
		LDWI 	AH 			//0336 	2A0A
		LCALL 	2F9H 			//0337 	32F9
		BCR 	STATUS,5 		//0338 	1283
		BSR 	5H,4 			//0339 	1A05
		LDWI 	AH 			//033A 	2A0A
		LJUMP 	2F9H 			//033B 	3AF9
		STR 	72H 			//033C 	01F2
		CLRR 	73H 			//033D 	0173
		LDR 	72H,0 			//033E 	0872
		SUBWR 	73H,0 			//033F 	0C73
		BTSC 	STATUS,0 		//0340 	1403
		RET		 					//0341 	0004
		CLRR 	74H 			//0342 	0174
		LDWI 	62H 			//0343 	2A62
		LCALL 	2F9H 			//0344 	32F9
		LDWI 	5H 			//0345 	2A05
		INCR	74H,1 			//0346 	09F4
		SUBWR 	74H,0 			//0347 	0C74
		BTSS 	STATUS,0 		//0348 	1C03
		LJUMP 	343H 			//0349 	3B43
		INCR	73H,1 			//034A 	09F3
		LJUMP 	33EH 			//034B 	3B3E

		//;Radio.C: 27: unsigned char i;
		//;Radio.C: 28: static unsigned char key_state = 0;
		//;Radio.C: 29: (void)POWER_INITIAL();
		LCALL 	30FH 			//034C 	330F

		//;Radio.C: 31: Set_BK4802_Rx_config();
		LCALL 	3C7H 			//034D 	33C7

		//;Radio.C: 33: {
		//;Radio.C: 35: if ((PA2 == 0) && (key_state == 0)) {
		BCR 	STATUS,5 		//034E 	1283
		BTSC 	5H,2 			//034F 	1505
		LJUMP 	360H 			//0350 	3B60
		LDR 	7AH,0 			//0351 	087A
		BTSS 	STATUS,2 		//0352 	1D03
		LJUMP 	360H 			//0353 	3B60

		//;Radio.C: 36: DelayMs(30);
		LDWI 	1EH 			//0354 	2A1E
		LCALL 	33CH 			//0355 	333C

		//;Radio.C: 37: if (PA2 == 0) {
		BCR 	STATUS,5 		//0356 	1283
		BTSC 	5H,2 			//0357 	1505
		LJUMP 	360H 			//0358 	3B60

		//;Radio.C: 38: DelayMs(30);
		LDWI 	1EH 			//0359 	2A1E
		LCALL 	33CH 			//035A 	333C

		//;Radio.C: 39: Set_BK4802_Tx_config();
		LCALL 	399H 			//035B 	3399

		//;Radio.C: 40: DelayMs(30);
		LDWI 	1EH 			//035C 	2A1E
		LCALL 	33CH 			//035D 	333C

		//;Radio.C: 41: key_state = 1;
		CLRR 	7AH 			//035E 	017A
		INCR	7AH,1 			//035F 	09FA

		//;Radio.C: 42: }
		//;Radio.C: 43: }
		//;Radio.C: 45: if ((PA2 == 1) && (key_state == 1)) {
		BCR 	STATUS,5 		//0360 	1283
		BTSS 	5H,2 			//0361 	1D05
		LJUMP 	34EH 			//0362 	3B4E
		DECR 	7AH,0 			//0363 	0D7A
		BTSS 	STATUS,2 		//0364 	1D03
		LJUMP 	34EH 			//0365 	3B4E

		//;Radio.C: 46: DelayMs(30);
		LDWI 	1EH 			//0366 	2A1E
		LCALL 	33CH 			//0367 	333C

		//;Radio.C: 47: if (PA2 == 1) {
		BCR 	STATUS,5 		//0368 	1283
		BTSS 	5H,2 			//0369 	1D05
		LJUMP 	34EH 			//036A 	3B4E

		//;Radio.C: 48: DelayMs(30);
		LDWI 	1EH 			//036B 	2A1E
		LCALL 	33CH 			//036C 	333C

		//;Radio.C: 49: Set_BK4802_Rx_config();
		LCALL 	3C7H 			//036D 	33C7

		//;Radio.C: 50: DelayMs(30);
		LDWI 	1EH 			//036E 	2A1E
		LCALL 	33CH 			//036F 	333C

		//;Radio.C: 51: key_state = 0;
		CLRR 	7AH 			//0370 	017A
		LJUMP 	34EH 			//0371 	3B4E
		STR 	73H 			//0372 	01F3
		BSR 	STATUS,5 		//0373 	1A83
		BCR 	5H,2 			//0374 	1105
		BCR 	STATUS,5 		//0375 	1283
		BCR 	5H,5 			//0376 	1285
		CLRR 	74H 			//0377 	0174
		LDR 	73H,0 			//0378 	0873
		STR 	72H 			//0379 	01F2
		LDWI 	7H 			//037A 	2A07
		BCR 	STATUS,0 		//037B 	1003
		RRR	72H,1 			//037C 	06F2
		ADDWI 	FFH 			//037D 	27FF
		BTSS 	STATUS,2 		//037E 	1D03
		LJUMP 	37BH 			//037F 	3B7B
		BTSS 	72H,0 			//0380 	1C72
		LJUMP 	385H 			//0381 	3B85
		BCR 	STATUS,5 		//0382 	1283
		BSR 	5H,4 			//0383 	1A05
		LJUMP 	387H 			//0384 	3B87
		BCR 	STATUS,5 		//0385 	1283
		BCR 	5H,4 			//0386 	1205
		LDWI 	5H 			//0387 	2A05
		BCR 	STATUS,0 		//0388 	1003
		RLR 	73H,1 			//0389 	05F3
		LCALL 	2F9H 			//038A 	32F9
		BCR 	STATUS,5 		//038B 	1283
		BSR 	5H,5 			//038C 	1A85
		LDWI 	5H 			//038D 	2A05
		LCALL 	2F9H 			//038E 	32F9
		BCR 	STATUS,5 		//038F 	1283
		BCR 	5H,5 			//0390 	1285
		LDWI 	5H 			//0391 	2A05
		LCALL 	2F9H 			//0392 	32F9
		LDWI 	8H 			//0393 	2A08
		INCR	74H,1 			//0394 	09F4
		SUBWR 	74H,0 			//0395 	0C74
		BTSC 	STATUS,0 		//0396 	1403
		RET		 					//0397 	0004
		LJUMP 	378H 			//0398 	3B78

		//;Radio.C: 59: unsigned char i;
		//;Radio.C: 61: for(i=4;i<=22;i++) {
		LDWI 	4H 			//0399 	2A04
		STR 	79H 			//039A 	01F9

		//;Radio.C: 62: writing(0x90,i,txreg[i-4],txreg[i-4]);
		LDR 	79H,0 			//039B 	0879
		STR 	75H 			//039C 	01F5
		LCALL 	3BDH 			//039D 	33BD
		LCALL 	1H 			//039E 	3001
		STR 	76H 			//039F 	01F6
		LCALL 	3BDH 			//03A0 	33BD
		LCALL 	1H 			//03A1 	3001
		STR 	77H 			//03A2 	01F7
		LDWI 	90H 			//03A3 	2A90
		LCALL 	302H 			//03A4 	3302
		LDWI 	17H 			//03A5 	2A17
		INCR	79H,1 			//03A6 	09F9
		SUBWR 	79H,0 			//03A7 	0C79
		BTSS 	STATUS,0 		//03A8 	1C03
		LJUMP 	39BH 			//03A9 	3B9B

		//;Radio.C: 63: }
		//;Radio.C: 65: for(i=5;i>2;i--) {
		LDWI 	5H 			//03AA 	2A05
		STR 	79H 			//03AB 	01F9

		//;Radio.C: 66: writing(0x90,i-3,txfreq[i-3],txfreq[i-3]);
		LDR 	79H,0 			//03AC 	0879
		ADDWI 	FDH 			//03AD 	27FD
		STR 	75H 			//03AE 	01F5
		LCALL 	3C2H 			//03AF 	33C2
		LCALL 	1H 			//03B0 	3001
		STR 	76H 			//03B1 	01F6
		LCALL 	3C2H 			//03B2 	33C2
		LCALL 	1H 			//03B3 	3001
		STR 	77H 			//03B4 	01F7
		LDWI 	90H 			//03B5 	2A90
		LCALL 	302H 			//03B6 	3302
		LDWI 	3H 			//03B7 	2A03
		DECR 	79H,1 			//03B8 	0DF9
		SUBWR 	79H,0 			//03B9 	0C79
		BTSS 	STATUS,0 		//03BA 	1C03
		RET		 					//03BB 	0004
		LJUMP 	3ACH 			//03BC 	3BAC
		BCR 	STATUS,0 		//03BD 	1003
		RLR 	79H,0 			//03BE 	0579
		ADDWI 	F9H 			//03BF 	27F9
		STR 	FSR 			//03C0 	0184
		RET		 					//03C1 	0004
		BCR 	STATUS,0 		//03C2 	1003
		RLR 	79H,0 			//03C3 	0579
		ADDWI 	47H 			//03C4 	2747
		STR 	FSR 			//03C5 	0184
		RET		 					//03C6 	0004

		//;Radio.C: 72: unsigned char i;
		//;Radio.C: 74: writing(0x90,23,0xa8,0XD0);
		LDWI 	17H 			//03C7 	2A17
		STR 	75H 			//03C8 	01F5
		LDWI 	A8H 			//03C9 	2AA8
		STR 	76H 			//03CA 	01F6
		LDWI 	D0H 			//03CB 	2AD0
		STR 	77H 			//03CC 	01F7
		LDWI 	90H 			//03CD 	2A90
		LCALL 	302H 			//03CE 	3302

		//;Radio.C: 76: for(i=4;i<=22;i++) {
		LDWI 	4H 			//03CF 	2A04
		STR 	79H 			//03D0 	01F9

		//;Radio.C: 77: writing(0x90,i,rxreg[i-4],rxreg[i-4]);
		LDR 	79H,0 			//03D1 	0879
		STR 	75H 			//03D2 	01F5
		LCALL 	3F3H 			//03D3 	33F3
		LCALL 	1H 			//03D4 	3001
		STR 	76H 			//03D5 	01F6
		LCALL 	3F3H 			//03D6 	33F3
		LCALL 	1H 			//03D7 	3001
		STR 	77H 			//03D8 	01F7
		LDWI 	90H 			//03D9 	2A90
		LCALL 	302H 			//03DA 	3302
		LDWI 	17H 			//03DB 	2A17
		INCR	79H,1 			//03DC 	09F9
		SUBWR 	79H,0 			//03DD 	0C79
		BTSS 	STATUS,0 		//03DE 	1C03
		LJUMP 	3D1H 			//03DF 	3BD1

		//;Radio.C: 78: }
		//;Radio.C: 80: for(i=5;i>2;i--) {
		LDWI 	5H 			//03E0 	2A05
		STR 	79H 			//03E1 	01F9

		//;Radio.C: 81: writing(0x90,i-3,rxfreq[i-3],rxfreq[i-3]);
		LDR 	79H,0 			//03E2 	0879
		ADDWI 	FDH 			//03E3 	27FD
		STR 	75H 			//03E4 	01F5
		LCALL 	3F8H 			//03E5 	33F8
		LCALL 	1H 			//03E6 	3001
		STR 	76H 			//03E7 	01F6
		LCALL 	3F8H 			//03E8 	33F8
		LCALL 	1H 			//03E9 	3001
		STR 	77H 			//03EA 	01F7
		LDWI 	90H 			//03EB 	2A90
		LCALL 	302H 			//03EC 	3302
		LDWI 	3H 			//03ED 	2A03
		DECR 	79H,1 			//03EE 	0DF9
		SUBWR 	79H,0 			//03EF 	0C79
		BTSS 	STATUS,0 		//03F0 	1C03
		RET		 					//03F1 	0004
		LJUMP 	3E2H 			//03F2 	3BE2
		BCR 	STATUS,0 		//03F3 	1003
		RLR 	79H,0 			//03F4 	0579
		ADDWI 	1FH 			//03F5 	271F
		STR 	FSR 			//03F6 	0184
		RET		 					//03F7 	0004
		BCR 	STATUS,0 		//03F8 	1003
		RLR 	79H,0 			//03F9 	0579
		ADDWI 	4DH 			//03FA 	274D
		STR 	FSR 			//03FB 	0184
		RET		 					//03FC 	0004
		CLRR 	7AH 			//03FD 	017A
		CLRR 	STATUS 			//03FE 	0103
		LJUMP 	34CH 			//03FF 	3B4C
			END
