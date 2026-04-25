library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--Simply reads a bit from UART and writes it to data
--baudClk will be timed so that its rising edge
--is around the center of the UART pulse to use stable values
--in calculations
entity rxBit is
  Port ( 
   baudClk: in std_logic;--Clock that runs at the baud rate of UART (9600)
   inputBit: in std_logic; --Directly tied to the I/O pin connected to the HC-06 BT receiver
   rxEnable: in std_logic;  --Simple enable (don't recieve if not actively transmitting)
   rst: in std_logic; --Restarts index to 0, active high
   
   triggerFSM: out boolean; --triggerFSM will be an input of our ctrlMotor entity
   receivedByte: out std_logic_vector(7 downto 0) --7 is MSB, 0 is LSB
   );
end rxBit;

architecture rxBit_arch of rxBit is
    signal index : integer range 0 to 7 := 0;
begin

    process(baudClk, rst) begin
        if rst='1' then
            index <= 0;
            triggerFSM <= false;
            receivedByte <= (others => 'U');
        elsif rising_edge(baudClk) then
            triggerFSM <= (index = 7); --When we're done rxing, update motors
            receivedByte(index) <= inputBit;
            index <= index + 1;
        end if;
    end process;
end rxBit_arch;
