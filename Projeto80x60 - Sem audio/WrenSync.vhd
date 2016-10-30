-- Baseado no ButtonSync do projeto no semestre passado, deixa wren ativo por apenas um ciclo de clock

library ieee;
use ieee.std_logic_1164.all;

-- Alunos: João Vicente Souto e Valdivino Morais
-- Projeto SD : Reconhecimento de um ponto

entity WrenSync is
	port
	(
		-- Input ports
		wren_in	: in  std_logic;
		clk_50 	: in 	std_logic;
		-- Output ports
		wren_out	: out std_logic
	);
end entity;


architecture behav of WrenSync is
type STATES is (EsperaAtivar, SaidaAtiva, EsperaDesativar);
signal actualState, nextState: STATES := EsperaAtivar;
begin

	process (clk_50)
	begin
		if rising_edge(clk_50) then
			actualState <= nextState;
		end if;
	end process;

	process (wren_in,actualState)
	begin
		case actualState is
			when EsperaAtivar =>
				if wren_in = '1' then nextState <= SaidaAtiva; else nextState <= EsperaAtivar; end if;
				wren_out <= '0';
			when SaidaAtiva =>
				if wren_in = '1' then nextState <= EsperaDesativar; else nextState <= EsperaAtivar; end if;
				wren_out <= '1';
			when EsperaDesativar =>
				if wren_in = '1' then nextState <= EsperaDesativar;	else nextState <= EsperaAtivar; end if;
				wren_out <= '0';
		end case;
	end process;

end architecture;
