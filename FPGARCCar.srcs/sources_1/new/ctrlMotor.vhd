library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--FSM to control the motors
--Writes outputs to PWM driver modules that drive the MOSFETs

entity ctrlMotor is
    Port(
    --Byte format: X YYY B CCC --X is left wheel direction, B is right wheel direction
    --YYY is left wheel speed, CCC is right wheel speed (duty cycle 3 bit res)
      byteReceived: in std_logic_vector(7 downto 0); --MSB 7 LSB 0
      systemClock: in std_logic;
      lFOut, lBOut, rFOut, rBOut: out std_logic--Linked to the actual MOSFET gates
    );
end ctrlMotor;

architecture ctrlMotor_arch of ctrlMotor is
    component pwmGenerator is
        
    end component;
    signal lF, lB, rF, rB: std_logic_vector(3 downto 0) := (others => '0'); --PWM values
begin
    
end ctrlMotor_arch;