	 ORG 800H  
	 LXI H,NWIERSZ  
	 MVI B,65  
	 MVI D,30  
	 MVI E,1  
WIERSZ 	 MOV C,D  
	 MVI A,32  
SPACJA 	 RST 1  
	 DCR C  
	 JNZ SPACJA  
	 MOV C,E  
	 MOV A,B  
ZNAK 	 RST 1  
	 DCR C  
	 JNZ ZNAK  
	 INR E  
	 INR E  
	 DCR D  
	 INR B  
	 CPI 89  
	 JNZ PRZESKOK  
	 RST 2  
	 MVI A,89  
PRZESKOK 	 RST 3  
	 CPI 90  
	 JNZ WIERSZ  
	 HLT  
NWIERSZ 	 DB 10,13,'@' 
