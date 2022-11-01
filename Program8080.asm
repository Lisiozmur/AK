	 ORG 800H  
	 MVI B,'&'  
	 MVI D,3  
	 MVI E,2  
	 MVI L,88  
	 MVI H,2  
RR 	 MOV C,D  
	 MVI A,' '  
RRR 	 RST 1  
	 DCR C  
	 JNZ RRR  
	 MOV A,B  
	 RST 1  
	 RST 1  
	 CPI 88  
	 DCR D  
	 JNZ PRZESKOK  
WIERSZ 	 MOV C,D  
	 MVI A,' '  
SPACJA 	 RST 1  
	 DCR C  
	 JNZ SPACJA  
	 MOV C,E  
	 MOV A,B  
	 RST 1  
	 MOV C,H  
	 MVI A,' '  
SPAC 	 DCR C  
	 RST 1  
	 JNZ SPAC  
	 MOV C,E  
	 MOV A,B  
	 RST 1  
	 INR E  
	 INR E  
	 DCR D  
	 INR H  
	 INR H  
	 INR L  
	 MOV A,L  
	 CPI 89  
	 JNZ PRZESKOK  
	 MVI A,89  
PRZESKOK  
	 CPI 90  
	 MVI A,10  
	 RST 1  
	 MVI A,13  
	 RST 1  
	 JNZ WIERSZ  
	 MVI D,1  
	 MVI E,6  
	 MVI L,87  
WIERSZ2 	 MOV C,D  
	 MVI A,' '  
SPACJA2 	 RST 1  
	 DCR C  
	 JNZ SPACJA2  
	 MOV C,E  
	 MOV A,B  
ZNAK2 	 RST 1  
	 DCR C  
	 JNZ ZNAK2  
	 DCR E  
	 DCR E  
	 INR D  
	 INR L  
	 MOV A,L  
	 CPI 89  
	 JNZ PRZESKOK2  
	 MVI A,89  
PRZESKOK2  
	 CPI 90  
	 MVI A,10  
	 RST 1  
	 MVI A,13  
	 RST 1  
	 JNZ WIERSZ2  
	 HLT  
