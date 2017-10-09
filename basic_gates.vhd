-- BASIC_GATES package
--
-- This file defines a set of basic logic gate
-- components including NOT, AND, OR, NAND, NOR
-- XOR, AND XNOR.  AND, OR, NAND, NOR are defined
-- for 2, 3, 4 inputs, XOR, XNOR are 2 input only.

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

PACKAGE BASIC_GATES IS

	COMPONENT NOT_OP
		PORT ( A: in STD_LOGIC; Z: out STD_LOGIC );
	END COMPONENT;
	
	COMPONENT AND2_OP
		PORT ( A, B: in STD_LOGIC; Z: out STD_LOGIC );
	END COMPONENT;
	
	COMPONENT AND3_OP
		PORT ( A, B, C: in STD_LOGIC; Z: out STD_LOGIC );
	END COMPONENT;
	
	COMPONENT AND4_OP
		PORT ( A, B, C, D: in STD_LOGIC; Z: out STD_LOGIC );
	END COMPONENT;
	
	COMPONENT OR2_OP
		PORT ( A, B: in STD_LOGIC; Z: out STD_LOGIC );
	END COMPONENT;
	
	COMPONENT OR3_OP
		PORT ( A, B, C: in STD_LOGIC; Z: out STD_LOGIC );
	END COMPONENT;
	
	COMPONENT OR4_OP
		PORT ( A, B, C, D: in STD_LOGIC; Z: out STD_LOGIC );
	END COMPONENT;
	
	COMPONENT NAND2_OP
		PORT ( A, B: in STD_LOGIC; Z: out STD_LOGIC );
	END COMPONENT;
	
	COMPONENT NAND3_OP
		PORT ( A, B, C: in STD_LOGIC; Z: out STD_LOGIC );
	END COMPONENT;
	
	COMPONENT NAND4_OP
		PORT ( A, B, C, D: in STD_LOGIC; Z: out STD_LOGIC );
	END COMPONENT;
	
	COMPONENT NOR2_OP
		PORT ( A, B: in STD_LOGIC; Z: out STD_LOGIC );
	END COMPONENT;
	
	COMPONENT NOR3_OP
		PORT ( A, B, C: in STD_LOGIC; Z: out STD_LOGIC );
	END COMPONENT;
	
	COMPONENT NOR4_OP
		PORT ( A, B, C, D: in STD_LOGIC; Z: out STD_LOGIC );
	END COMPONENT;

	COMPONENT XOR2_OP
		PORT ( A, B: in STD_LOGIC; Z: out STD_LOGIC );
	END COMPONENT;
	
	COMPONENT XNOR2_OP
		PORT ( A, B: in STD_LOGIC; Z: out STD_LOGIC );
	END COMPONENT;
	
END BASIC_GATES;


-- Declare BASIC_GATES entities and architectures

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

entity NOT_OP is
	port
		(A: in STD_LOGIC;
		 Z: out STD_LOGIC);
end NOT_OP;

ARCHITECTURE BASIC_ARCH OF NOT_OP IS

BEGIN
	Z <= not A;
END BASIC_ARCH; 


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

entity AND2_OP is 
	port 
		(A, B: in STD_LOGIC;
		Z: out STD_LOGIC);
end AND2_OP;

ARCHITECTURE BASIC_ARCH OF AND2_OP IS

BEGIN
	Z <= A and B;
END BASIC_ARCH; 


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

entity AND3_OP is 
	port
		(A, B, C: in STD_LOGIC;
		 Z: out STD_LOGIC);
end AND3_OP;

ARCHITECTURE BASIC_ARCH OF AND3_OP IS

BEGIN
	Z <= A and B and C;
END BASIC_ARCH; 


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

entity AND4_OP is 
	port
		(A, B, C, D: in STD_LOGIC;
		 Z: out STD_LOGIC);
end AND4_OP;

ARCHITECTURE BASIC_ARCH OF AND4_OP IS

BEGIN
	Z <= A and B and C and D;
END BASIC_ARCH; 


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

entity OR2_OP is 
	port 
		(A, B: in STD_LOGIC;
		Z: out STD_LOGIC);
end OR2_OP;

ARCHITECTURE BASIC_ARCH OF OR2_OP IS

BEGIN
	Z <= A or B;
END BASIC_ARCH; 


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

entity OR3_OP is 
	port
		(A, B, C: in STD_LOGIC;
		 Z: out STD_LOGIC);
end OR3_OP;

ARCHITECTURE BASIC_ARCH OF OR3_OP IS

BEGIN
	Z <= A or B or C;
END BASIC_ARCH; 


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

entity OR4_OP is 
	port
		(A, B, C, D: in STD_LOGIC;
		 Z: out STD_LOGIC);
end OR4_OP;

ARCHITECTURE BASIC_ARCH OF OR4_OP IS

BEGIN
	Z <= A or B or C or D;
END BASIC_ARCH; 


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

entity NAND2_OP is 
	port 
		(A, B: in STD_LOGIC;
		Z: out STD_LOGIC);
end NAND2_OP;

ARCHITECTURE BASIC_ARCH OF NAND2_OP IS

BEGIN
	Z <= not (A and B);
END BASIC_ARCH; 


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

entity NAND3_OP is 
	port
		(A, B, C: in STD_LOGIC;
		 Z: out STD_LOGIC);
end NAND3_OP;

ARCHITECTURE BASIC_ARCH OF NAND3_OP IS

BEGIN
	Z <= not (A and B and C);
END BASIC_ARCH; 


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

entity NAND4_OP is 
	port
		(A, B, C, D: in STD_LOGIC;
		 Z: out STD_LOGIC);
end NAND4_OP;

ARCHITECTURE BASIC_ARCH OF NAND4_OP IS

BEGIN
	Z <= not (A and B and C and D);
END BASIC_ARCH; 


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

entity NOR2_OP is 
	port 
		(A, B: in STD_LOGIC;
		Z: out STD_LOGIC);
end NOR2_OP;

ARCHITECTURE BASIC_ARCH OF NOR2_OP IS

BEGIN
	Z <= not (A or B);
END BASIC_ARCH; 


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

entity NOR3_OP is 
	port
		(A, B, C: in STD_LOGIC;
		 Z: out STD_LOGIC);
end NOR3_OP;

ARCHITECTURE BASIC_ARCH OF NOR3_OP IS

BEGIN
	Z <= not (A or B or C);
END BASIC_ARCH; 


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

entity NOR4_OP is 
	port
		(A, B, C, D: in STD_LOGIC;
		 Z: out STD_LOGIC);
end NOR4_OP;

ARCHITECTURE BASIC_ARCH OF NOR4_OP IS

BEGIN
	Z <= not (A or B or C or D);
END BASIC_ARCH; 


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

entity XOR2_OP is 
	port 
		(A, B: in STD_LOGIC;
		Z: out STD_LOGIC);
end XOR2_OP;

ARCHITECTURE BASIC_ARCH OF XOR2_OP IS

BEGIN
	Z <= A xor B;
END BASIC_ARCH; 


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

entity XNOR2_OP is 
	port 
		(A, B: in STD_LOGIC;
		Z: out STD_LOGIC);
end XNOR2_OP;

ARCHITECTURE BASIC_ARCH OF XNOR2_OP IS

BEGIN
	Z <= not (A xor B);
END BASIC_ARCH; 



