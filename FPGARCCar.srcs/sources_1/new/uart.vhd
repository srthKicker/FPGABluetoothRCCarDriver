library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--Top level architecture that instantiates all other entities
--Receives and translates 8 bits of UART data from the HC-06
--Designed for controlling two motors with a simple H bridge
--Specifically for Spring 2025 Digital Logic final project
--remote control 2 wheel drive car 

--Uses 3 bit PWM which is low resolution, but good enough for demonstrations
entity uart is
    Port(
        sysClk: in std_logic; --Connected to system 100MHz clock via constraints
        uartBitIn: in std_logic;
        globalReset: in std_logic; --connected to button/poweron global reset on board
        receivedByte: out std_logic_vector(7 downto 0);
        lF, lB, rF, rB: out std_logic --PWM pins for the outputs, only 2 bit range
                                      --for PWM range for now
        --No 7 seg display yet, implementing later? Maybe?
    );
end uart;

architecture uart_arch of uart is
    --Components
    component rxBit is --Saves UART data in internal signal
        Port(
            baudClk: in std_logic;
            inputBit: in std_logic;
            rxEnable: in std_logic;
            rst: in std_logic;
            triggerFSM: out boolean;
            receivedByte: out std_logic_vector(7 downto 0) 
        );
    end component;
    
    --Signals
    signal baudClk: std_logic;
begin

end uart_arch;