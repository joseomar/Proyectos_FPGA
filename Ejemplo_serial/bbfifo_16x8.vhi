
-- VHDL Instantiation Created from source file bbfifo_16x8.vhd -- 16:22:50 04/23/2015
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT bbfifo_16x8
	PORT(
		data_in : IN std_logic_vector(7 downto 0);
		reset : IN std_logic;
		write : IN std_logic;
		read : IN std_logic;
		clk : IN std_logic;          
		data_out : OUT std_logic_vector(7 downto 0);
		full : OUT std_logic;
		half_full : OUT std_logic;
		data_present : OUT std_logic
		);
	END COMPONENT;

	Inst_bbfifo_16x8: bbfifo_16x8 PORT MAP(
		data_in => ,
		data_out => ,
		reset => ,
		write => ,
		read => ,
		full => ,
		half_full => ,
		data_present => ,
		clk => 
	);


