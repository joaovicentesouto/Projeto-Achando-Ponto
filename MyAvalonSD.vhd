library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric.std.all;

entity MyAvalonSD is
     generic (
             data_width : positive := 8;
             address_width : positive := 2;
             --<any other parameter needed>
     );
     port(
            clock : in std_logic;
            resetn : in std_logic;
            read : in std_logic;   -- active if reading from an address of the component
            write : in std_logic;   -- active if writing into an address of the component
            address : in std_logic_vector(address_width-1 downto 0);   -- the address from it's reading or to were it's writing
            writedata : in std_logic_vector(data_width-1 downto 0);  -- the data to be weritten
            readdata : out std_logic_vector(data_width-1 downto 0);  -- the data readed
            --<any othe inputs or outputs that will not be connected to the bus>
    );
end entity;
