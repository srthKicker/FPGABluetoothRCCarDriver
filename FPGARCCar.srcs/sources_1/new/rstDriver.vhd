library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity rstDriver is --Resets everything when new UART transmissions come in
    Port(
        systemClock: in std_logic;
        uartIn: in std_logic; --Track bits we rx from HC-06
        receivingData: in boolean; --track from rxBit whether we are receiving
        globalIntrnlReset: in std_logic; --Pulsed once on powerup        
        baudClkReset: out std_logic
    );
end rstDriver;

architecture rstDriver_arch of rstDriver is
    signal prevUartIn: std_logic := '1'; --Allows us to test for falling edge
begin
    process(systemClock) begin
        if rising_edge(systemClock) then
            prevUartIn <= uartIn;
            --dont pulse reset if already receiving
            if not receivingData and prevUartIn = '1' and uartIn = '0' then 
                baudClkReset <= '1'; --pulse baud reset
            else
                baudClkReset <= '0'; --Pull reset low otherwise
            end if;
        end if;
    end process;
end rstDriver_arch;