LIBRARY ieee ;
USE ieee.std_logic_1164.ALL;

Entity seconds_counter Is 
PORT ( 
		clk50 , pause , reset : IN std_logic ;
		l1 : OUT std_logic_vector(6 DOWNTO 0) ;
		l2 : OUT std_logic_vector(6 DOWNTO 0));
END seconds_counter;

ARCHITECTURE countTo60 of seconds_counter
IS
 SIGNAL clk1 : std_logic;
 SIGNAL count : integer := 1;
SIGNAL clkt : std_logic := '1';
 SIGNAL count0 : integer :=0 ;
 SIGNAL count1: integer := 0 ; 
BEGIN
--pause = 0;
	PROCESS(clk50,reset)
BEGIN
IF(reset = '1') THEN
count <= 1;
clkt <= '1';
ELSIF(clk50'EVENT and clk50='1') THEN
count <= count+1;
IF(count = 25000000)
THEN
count <= 1 ;
clkt <= NOT clkt;
END IF;
END IF;
clk1 <= clkt;
END PROCESS;
 
 PROCESS(clk1,reset,pause)
 BEGIN
 IF(pause='0') THEN
	IF(reset='1') THEN
		count0 <=0;
		count1 <=0;
	ELSIF (clk1'EVENT AND clk1='1') THEN
		IF(count0 = 9) THEN
			count0 <= 0;
			IF(count1<5) THEN
				count1 <= count1+1;
			ELSE
				count1 <=0;
			END IF;
		ELSE
			count0 <= count0 + 1;
		END IF; 
	END IF ;
	CASE count0 IS 
			WHEN 0 => l1 <= "1000000";
			WHEN 1 => l1 <= "1111001";
			WHEN 2 => l1 <= "0100100";
			WHEN 3 => l1 <= "0110000";
			WHEN 4 => l1 <= "0011001";
			WHEN 5 => l1 <= "0010010";
			WHEN 6 => l1 <= "0000010";
			WHEN 7 => l1 <= "1111000";
			WHEN 8 => l1 <= "0000000";
			WHEN 9 => l1 <= "0010000";
			WHEN OTHERS => l1 <= "1111111";
	END CASE; 
	CASE count1 IS 
			WHEN 0 => l2 <= "1000000";
			WHEN 1 => l2 <= "1111001";
			WHEN 2 => l2 <= "0100100";
			WHEN 3 => l2 <= "0110000";
			WHEN 4 => l2 <= "0011001";
			WHEN 5 => l2 <= "0010010";
			WHEN OTHERS => l2 <= "1111111";

	END CASE;
END IF;
END PROCESS ;
 
END countTo60;
