library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity rxBit is --Sim
  Port ( baudClk,--Clock that runs at the baud rate of UART (9600)
   inputBit,  --Directly tied to the I/O pin connected to the HC-06 BT receiver
   rxEnable,  --Simple enable (don't recieve if not actively transmitting)
   rst: --Restarts index to 0;
   in std_logic; 
   
   triggerFSM: out std_logic; --If we just recieved last bit in transmit byte, update motors
   --triggerFSM will be an input of our ctrlMotor entity
   receivedByte: out std_logic_vector(7 downto 0) --7 is MSB, 0 is LSB
   );
end rxBit;

architecture Behavioral of rxBit is

begin


end Behavioral;
