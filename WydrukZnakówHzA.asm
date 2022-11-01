	 ORG 800H  
	 LXI H,TEKST1  
	 RST 3  
	 RST 2  
	 LXI H,TEKST2  
	 RST 3  
	 RST 4  
	 HLT  
TEKST1 	 DB 'wprowadz znak',10,13,'@'  
TEKST2 	 DB 10,13,'heksadecymalnie:@' 
