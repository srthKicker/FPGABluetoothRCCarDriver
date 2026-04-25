library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity pwmGenerator is
    Port ( 
        systemClock : in std_logic; --used to time
        dutyCycle : in std_logic_vector (2 downto 0);--Duty cycle, 3 bit res
        globalReset : in std_logic; --used to reset at beginning of operation by power on
        driver : out std_logic --directly to gate
    );
end pwmGenerator;

architecture pwmGenerator_arch of pwmGenerator is
    --Constants to do with clock configuration
    constant PWM_FREQUENCY : integer range 0 to 32768 := 20000; --20kHz starting point
    constant CLOCK_FREQ : integer := 100000000; --internal clock freq, 100MHz
    --How many clock cycles before we restart PWM calculations, 5000 for 20khz and 100Mhz
    constant PWM_PERIOD_CYCLES : integer range 0 to 16384 := CLOCK_FREQ/PWM_FREQUENCY;
    constant PWM_PERIOD_SCALED: integer range 0 to 8192 := PWM_PERIOD_CYCLES/7;
    --Signals to do with counting clock cycles and PWM 
    signal clockCount : integer range 0 to 16384 := 1;--1 to remove off by 1 error
    --will be PWM_PERIOD_CYCLES * (
    signal numHighCycles: integer range 0 to 16384 := 0; --how wide the pulse will be
    signal completedHighCycles: integer range 0 to 16384 := 0; --how wide the pulse has been
begin
    process(systemClock, globalReset) begin
         if (globalReset = '1') then --on reset handle signals and driver output
            --recalculate pwm duty
            numHighCycles <= (PWM_PERIOD_SCALED) * to_integer(unsigned(dutyCycle));
            completedHighCycles <= 0;
            clockCount <= 1;
            --turn motor off
            driver <= '0';
        elsif rising_edge(systemClock) then
            if (clockCount = PWM_PERIOD_CYCLES) then --if we are done with this period
                completedHighCycles <= 0;--reset high cycle count
                clockCount <= 0; --reset clock cycle count
            else --Normally, we do this
                --Calculate how many high cycles we need to do
                --3 bit resolution duty means 7 should max the num of cycles
                --Again, non blocking means a 1 clock cycle delay, but thats okay
                numHighCycles <= (PWM_PERIOD_SCALED) * to_integer(unsigned(dutyCycle)); 
                clockCount <= clockCount + 1; --increment clock count always
                
                if (completedHighCycles < numHighCycles) then
                    driver <= '1';
                    completedHighCycles <= completedHighCycles + 1; --increment
                else
                    driver <= '0';
                end if;
            end if;
        end if;
    end process;

end pwmGenerator_arch;
