library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

--Drives 3 bit resolution PWM to the output "driver".
--Four of these are instantiated in ctrlMotor

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
    constant PWM_PERIOD_SCALED: integer range 0 to 8192 := PWM_PERIOD_CYCLES/7; --714
    
    --Change to 1 if off by 1 matters, 0 if it doesnt
    constant CLOCK_START : integer range 0 to 1 := 1;
    
    --Signals to do with counting clock cycles and PWM 
    signal clockCount : integer range 0 to 16384 := CLOCK_START;
    --will be PWM_PERIOD_CYCLES * (
    signal numHighCycles: integer range 0 to 16384 := 0; --how wide the pulse will be
begin
    process(systemClock, globalReset) begin
    
         if (globalReset = '1') then --on reset handle signals and driver output
            numHighCycles <= 0;
            clockCount <= CLOCK_START;
            driver <= '0'; --turn off motor
            
        elsif rising_edge(systemClock) then --On every clock edge
            --Count clock cycles
            if (clockCount = PWM_PERIOD_CYCLES) then --if we are done with this period
                --Calculate how many high cycles we need to do next cycle
                --3 bit resolution duty means 7 should max the num of cycles
                --Again, non blocking means a 1 clock cycle delay, but thats okay
                numHighCycles <= (PWM_PERIOD_SCALED) * to_integer(unsigned(dutyCycle)); 
                clockCount <= CLOCK_START; --reset clock cycle count
            else --If we are midway through a PWM period
                clockCount <= clockCount + 1; --increment clock count always
            end if; --end clock counting
            
            --Motor driving logic
            --This logic works for all clock cycles regardless of where in the cycle we are
            if (clockCount < numHighCycles) then --if the pulse needs to be wider still
                driver <= '1';
            else --if the pulse is done being high
                driver <= '0';
            end if;
        end if;
    end process;
    
end pwmGenerator_arch;
