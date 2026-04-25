library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity baudClk is
    Port(
        systemClock: in std_logic; --connect to board's clock source
        receivingData: in boolean; --connect to rxBit to not generate unneeded clocks
        reset: in std_logic; --connect to rstDriver.baudClkReset
        baudClock: out std_logic --connect to rxBit
    );
end baudClk;

architecture baudClk_arch of baudClk is
    --For 100MHz clock and 9600 baud UART, change to 
    -- baudRate/clockRate if working with different values
    constant clocksPerBaudClk : integer range 0 to 16384 := 10417;
    --wait until 1/2 of the way into a UART cycle to get stabler data
    constant waitClockCycles : integer range 0 to 16384 := clocksPerBaudClk/2;
    signal baudBuffer: std_logic := '0'; --buffer to allow inverting baudClock
    signal cycleCount: integer range 0 to 16384 := 0;
    signal cycleDelayCountdown: integer range 0 to 8192 := 0; --initial doesnt matter
begin
    process(systemClock, reset) begin
        if reset = '1' then -- on reset from rstDriver prepare to receive data
            baudBuffer <= '0'; --prepare for pulsing clock
            baudClock <= '0'; --prepare for pulsing clock
            cycleCount <= 0; --reset counter
            --Set delay so we hit midpoint of UART bit on clock pulses
            cycleDelayCountdown <= waitClockCycles;
        elsif rising_edge(systemClock) then
            if cycleDelayCountdown = 0 then --if delay done
                if receivingData then --if rxBit says we are still receiving
                    if cycleCount = clocksPerBaudClk then --
                        baudBuffer <= not baudBuffer; --invert clock
                        cycleCount <= 0; --reset count
                    else --
                        cycleCount <= cycleCount + 1;  
                    end if;
                    --Baud clock will be 1 cycle behind buffer, but that is ok in this case
                    baudClock <= baudBuffer; --actually write the buffer value to the clock
                else --if we aren't receiving data anymore
                    baudClock <= '0';
                    baudBuffer <= '0';
                end if;
            else --if we still need to wait for midpoint
                cycleDelayCountdown <= cycleDelayCountdown - 1;
            end if; --end delay if
        end if;--end rising edge vs reset if
    end process;
end baudClk_arch;

