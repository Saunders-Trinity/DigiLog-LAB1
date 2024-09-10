Library ieee;
USE ieee.std_logic_1164.all; --this is a first draft
entity lab1code is 
Port ( x1 :  in STD_LOGIC;  			--defining inputs
		x2 :  in STD_LOGIC;				--Starting from the left most switch on board, sw8-sw6 are the inputs
		x3 :  in STD_LOGIC; 
		x4 :  in STD_LOGIC; 
		--BONUS 
		T : in STD_LOGIC;
		W : in STD_LOGIC;
		Door: in STD_LOGIC;
		
		
		
		a : out STD_LOGIC	;		--outputs, may need to change to pin numbers
		b: out STD_LOGIC;
		c: out STD_LOGIC;
		d: out STD_LOGIC;
		e: out STD_LOGIC;
		f: out STD_LOGIC;
		g: out STD_LOGIC;
		
		--FOR BONUS
		M : out STD_LOGIC	;
		V: out STD_LOGIC	;
		H : out STD_LOGIC	
		
		);
END lab1code;
--to DO
--the letter outputs represent the segments of the hexs
--define the correct ports and pins
--according to the truth table equations for outputs for each number

architecture Behavioral of lab1code is
begin
	--making the number 0
	--should all be 1 acc to truth table
	 a <=  (not x1 and not x2 and not x3 and x4) or (not x1 and x2 and not x3 and not x4);
			 
    
	 b <= (not x1 and x2 and not x3 and x4) or (not x1 and x2 and x3 and not x4);
			 
    c <= (not x1 and not x2 and x3 and  not x4);
	 
	 d <= (not x1 and not x2 and not x3 and x4) or (not x1 and x2 and not x3 and not x4) or (not x1 and  x2 and x3 and x4);
				  
    e <= (not x1 and not x2 and not x3 and x4) or (not x1 and not x2 and x3 and x4) or (not x1 and x2 and not x3 and not x4) or (not x1 and x2 and not x3 and x4) or (not x1 and x2 and x3 and x4) or (x1 and not x2 and not x3 and x4);
	 
	  f <= ((not x1 and not x2 and not x3 and x4) or (not x1 and not x2 and x3 and not x4)
	  or(not x1 and not x2 and x3 and x4) or (not x1 and x2 and x3 and x4));
	
		--this is the middle segement
    g <= (not x1 and not x2 and not x3 and not x4) or (not x1 and not x2 and not x3 and x4) or (not x1 and x2 and x3 and x4);
	
	--d and f not acitvating when needed 
	
	
	
	--BONUS WASHER QUESTION these are cases where the output should produce 1
	M <= (T and W and Door);
	
	V <= (not T and not W and Door) or (T and not W and Door);
	
	H <= (not T and W and Door);
	
	 
	
	
end behavioral;


