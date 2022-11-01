	 ORG 800H  
	 MVI A,3EH  
	 RST 1  
WCZYTAJ 	 RST 2  
	 CPI 13  
	 JNZ WCZYTAJ  
	 HLT  
