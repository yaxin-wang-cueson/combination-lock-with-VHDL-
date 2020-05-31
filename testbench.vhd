----------------------------------------------------------------------------------
-- Company: University of Birmingham,
-- Engineer: Steven Quigley
-- 
-- Create Date: 14.07.2018 17:00:26
-- Design Name: testbench
-- Module Name: testbench - Behavioral
-- Project Name: example1
-- Target Devices: Artix7 series
-- Tool Versions: 
-- Description: Test bench for first lab
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

entity testbench is
end testbench;

architecture Behavioral of testbench is
    signal CLK100MHZ: std_logic;                       --100 MHz clock
    --signal BTNL, BTNR, BTNU, BTND, BTNC:  std_logic;   --Push buttons
    signal B1, B2, B3, BTNU, BTNC, BTNR, BTNL, BTND: std_logic;
    signal SWITCHES:   STD_LOGIC_VECTOR (7 downto 0);  --Slider switches
    signal LEDS:       STD_LOGIC_VECTOR (9 downto 0);  --LEDs
    signal DIGITS:     STD_LOGIC_VECTOR (7 downto 0);  --Digits of 7-segment display
    signal SEGMENTS:   STD_LOGIC_VECTOR (7 downto 0);  --Segments of 7-segment display 
begin
    uut: entity work.project4(Behavioral) port map 
       ( CLK100MHZ => CLK100MHZ,
         BTNL=>BTNL, BTNR=>BTNR, BTNU=>BTNU, BTND=>BTND, BTNC=>BTNC,     
         SWITCHES => SWITCHES,
         LEDS => LEDS,    
         DIGITS => DIGITS,   
         SEGMENTS =>SEGMENTS);
         
     process  -- Create clock signal
     begin
          CLK100MHZ <= '0';
          wait for 5 ns;
          CLK100MHZ <= '1';
          wait for 5 ns;
     end process;
     
----verify birthday&error 1111=> 0001 0001 0001 0001 => leds(9 downto 0) ='1100000011'
--     process -- Create inputs
--     begin
--        BTNC <= '1';
--        BTNR <= '1';
--     wait for 50000 ns;
--        BTNR <= '0';
--        BTNC <= '0';
--     wait for 50000 ns;
     
--    SWITCHES(3 DOWNTO 0) <= "0001";
--    wait for 50000 ns;
--        BTNR <= '1';
--     wait for 50000 ns;
--        BTNR <= '0';
--     wait for 50000 ns;
     
--    SWITCHES(3 DOWNTO 0) <= "0001";
--     wait for 50000 ns;
--        BTNR <= '1';
--     wait for 50000 ns;
--        BTNR <= '0';
--     wait for 50000 ns;
     
--    SWITCHES(3 DOWNTO 0) <= "0001";
--     wait for 50000 ns;
--        BTNR <= '1';
--     wait for 50000 ns;
--        BTNR <= '0';
--     wait for 50000 ns;
     
--    SWITCHES(3 DOWNTO 0) <= "0001";
--     wait for 50000 ns;
--        BTNR <= '1';
--     wait for 50000 ns;  
--        BTNR <= '0';
--     wait for 50000 ns;  
--        BTNR <= '1';
--     wait for 50000ns;
--        BTNR <= '0';
--     wait for 50000ns;   
--     end process;
     
     --verify old passcode&correct  3469=0011 0100 0110 1001 => leds='0000000001'
--     process -- Create inputs
--     begin
--        BTNL <= '1';
--        BTNR <= '1';
--        wait for 50000 ns;
--        BTNR <= '0';
--        BTNL <= '0';
--        wait for 50000 ns;
     
--    SWITCHES(3 DOWNTO 0) <= "0011";
--    wait for 60000 ns;
--        BTNR <= '1';
--     wait for 60000 ns;
--        BTNR <= '0';
--     wait for 60000 ns;
     
--    SWITCHES(3 DOWNTO 0) <= "0100";
--    wait for 60000 ns;
--        BTNR <= '1';
--     wait for 60000 ns;
--        BTNR <= '0';
--     wait for 60000 ns;
     
--    SWITCHES(3 DOWNTO 0) <= "0110";
--    wait for 60000 ns;
--        BTNR <= '1';
--     wait for 60000 ns;
--        BTNR <= '0';
--     wait for 60000 ns;
     
--    SWITCHES(3 DOWNTO 0) <= "1001";
--    wait for 60000 ns;
--        BTNR <= '1';
--     wait for 60000 ns;
--        BTNR <= '0';
--     wait for 60000 ns;    
--        BTNR <= '1';
--     wait for 100 ns;
--        BTNR <= '0';
--     wait for 60000 ns;
--     end process;
     
     
----     --verify old passcode & error 3333=0011 0011 0011 0011 =>leds='1111111111'
--     process -- Create inputs
--     begin
--        BTNL <= '1';
--        wait for 50000 ns;
--        BTNL <= '0';
--        wait for 50000 ns;
     
--    SWITCHES(3 DOWNTO 0) <= "0011";
--    wait for 50000 ns;
--        BTNR <= '1';
--     wait for 50000 ns;
--        BTNR <= '0';
--     wait for 50000 ns;
     
--    SWITCHES(3 DOWNTO 0) <= "0011";
--    wait for 50000 ns;
--        BTNR <= '1';
--     wait for 50000 ns;
--        BTNR <= '0';
--     wait for 50000 ns;
     
--    SWITCHES(3 DOWNTO 0) <= "0011";
--    wait for 50000 ns;
--        BTNR <= '1';
--     wait for 50000 ns;
--        BTNR <= '0';
--     wait for 50000 ns;
     
--    SWITCHES(3 DOWNTO 0) <= "0011";
--    wait for 50000 ns;
--        BTNR <= '1';
--     wait for 50000 ns;
--        BTNR <= '0';
--     wait for 50000 ns;



--verify & set 7-digits passcode&correct--2023469-0010 0000 0010 0011 0100 0110 1001
     process -- Create inputs
     begin
        BTNC <= '1';
        BTNR <= '1';
     wait for 50000 ns;
        BTNR <= '0';
        BTNC <= '0';
     wait for 50000 ns;
     
    SWITCHES(3 DOWNTO 0) <= "0000";--0
    wait for 50000 ns;
        BTNR <= '1';
     wait for 50000 ns;
        BTNR <= '0';
     wait for 50000 ns;
     
    SWITCHES(3 DOWNTO 0) <= "0100";--4
    wait for 50000 ns;
        BTNR <= '1';
     wait for 50000 ns;
        BTNR <= '0';
     wait for 50000 ns;
     
    SWITCHES(3 DOWNTO 0) <= "0001";--1
    wait for 50000 ns;
        BTNR <= '1';
     wait for 50000 ns;
        BTNR <= '0';
     wait for 50000 ns;
     
    SWITCHES(3 DOWNTO 0) <= "0110";--6  verify the birthday number leds='0000110000'
    wait for 50000 ns;
        BTNR <= '1';
     wait for 50000 ns;
        BTNR <= '0';
     wait for 50000 ns; 
     
     -- press B2 to verify
        BTNR <= '1';
     wait for 50000 ns;
        BTNR <= '0';
     wait for 50000 ns; 
     
    SWITCHES(3 DOWNTO 0) <= "0110";--7  passcode length
    wait for 50000 ns;
        BTNR <= '1';
     wait for 50000 ns;
        BTNR <= '0';
     wait for 50000 ns;
     
    SWITCHES(3 DOWNTO 0) <= "0010";--2
    wait for 50000 ns;
        BTNR <= '1';
     wait for 50000 ns;
        BTNR <= '0';
     wait for 50000 ns;  
     
    SWITCHES(3 DOWNTO 0) <= "0000";--0
    wait for 50000 ns;    
        BTNR <= '1';
    wait for 50000 ns;
        BTNR <= '0';
     wait for 50000 ns;
     
    SWITCHES(3 DOWNTO 0) <= "0010";--2
    wait for 50000 ns;
        BTNR <= '1';
     wait for 50000 ns;
        BTNR <= '0';
     wait for 50000 ns;
     
    SWITCHES(3 DOWNTO 0) <= "0011";--3
    wait for 50000 ns;
        BTNR <= '1';
     wait for 50000 ns;
        BTNR <= '0';
     wait for 50000 ns;   
     
    SWITCHES(3 DOWNTO 0) <= "0100";--4
    wait for 50000 ns;
        BTNR <= '1';
     wait for 50000 ns;
        BTNR <= '0';
     wait for 50000 ns;
     
    SWITCHES(3 DOWNTO 0) <= "0110";--6
    wait for 50000 ns;
        BTNR <= '1';
     wait for 50000 ns;
        BTNR <= '0';
     wait for 50000 ns;
     
    SWITCHES(3 DOWNTO 0) <= "1001";--9
    wait for 50000 ns;
        BTNR <= '1';
     wait for 50000 ns;
        BTNR <= '0';
     wait for 50000 ns;    
     
 
     BTNR <= '1';             --reset_complete
     wait for 50000 ns;
     BTNR <= '0';
     wait for 50000 ns;
     
     BTNL <= '1';          --init
     wait for 50000 ns;
     BTNL <= '0';
     wait for 50000 ns;
     
    SWITCHES(3 DOWNTO 0) <= "0010";--2
    wait for 50000 ns;
        BTNR <= '1';
     wait for 50000 ns;
        BTNR <= '0';
     wait for 50000 ns; 
     
    SWITCHES(3 DOWNTO 0) <= "0000";--0
    wait for 50000 ns;
        BTNR <= '1';
     wait for 50000 ns;
        BTNR <= '0';
     wait for 50000 ns;
     
    SWITCHES(3 DOWNTO 0) <= "0010";--2
    wait for 50000 ns;
        BTNR <= '1';
     wait for 50000 ns;
        BTNR <= '0';
     wait for 50000 ns;
     
    SWITCHES(3 DOWNTO 0) <= "0011";--3
    wait for 50000 ns;
        BTNR <= '1';
     wait for 50000 ns;
        BTNR <= '0';
     wait for 50000 ns;    
     
    SWITCHES(3 DOWNTO 0) <= "0100";--4
    wait for 50000 ns;
        BTNR <= '1';
     wait for 50000 ns;
        BTNR <= '0';
     wait for 50000 ns;
     
    SWITCHES(3 DOWNTO 0) <= "0110";--6
    wait for 50000 ns;
        BTNR <= '1';
     wait for 50000 ns;
        BTNR <= '0';
     wait for 50000 ns;
     
    SWITCHES(3 DOWNTO 0) <= "1001";--9
    wait for 50000 ns;
        BTNR <= '1';
     wait for 50000 ns;
        BTNR <= '0';
     wait for 50000 ns;  
     
        BTNR <= '1';
     wait for 50000 ns;
        BTNR <= '0';
     wait for 50000 ns;  
     
--        BTNR <= '1';
--     wait for 50000 ns;
--        BTNR <= '0';
--     wait for 50000 ns; 
          
     end process;

     
end Behavioral;
