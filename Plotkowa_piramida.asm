 ORG 800H  
	 MVI B,5  
MLOOP  
	 CALL PLOTKI  
	 CALL NLINE  
	 DCR B  
	 JNZ MLOOP  
	 HLT  
PLOTKI  
	 MOV D,B  
	 MVI A,'|'  
PLOOP  
	 RST 1  
	 DCR D  
	 JNZ PLOOP  
	 RET  
NLINE  
	 MVI A,10  
	 RST 1  
	 MVI A,13  
	 RST 1  
	 RET  