library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Alunos: João Vicente Souto e Valdivino Morais
-- Projeto SD : Reconhecimento de um ponto

entity FSM_AchandoPonto is
  port (
    -- Input
    -- Controle geral
    clk, wren, reset : in std_logic; -- CLOCK_50
    -- Condições
    pixelNoAglomerado, pontoTerminou, pixelPreto, addrIgualZero, fimDaImagem : in std_logic;

    -- Output
    -- Controle componente PosicaoPonto.vhd
    inicio_ij, verifica_ij : out std_logic;
    -- Controle componente Comparadores.vhd
    estadoInicio, estadoPrimeiroPreto, achouPrimeiroPreto : out std_logic;
    -- Controle componente DesenhandoQuadrado.vhd
    contaPretosNoPonto, ativaQuadrado : out std_logic
  );
end entity;

architecture behav of FSM_AchandoPonto is

  type States is (Inicio, Controle, Branco, PrimeiroPreto, QualquerPreto, DesenhandoQuadrado);
  signal actualState, nextState: States := Inicio;

  signal ativarQuad, achou : std_logic; -- sinais auxiliares para as saídas.

  begin
    -- Next-state logic
    Comportamento: process (actualState) is
    begin
      nextState <= actualState;
      case actualState is

        when Inicio => -- Estado inicial
          if addrIgualZero='1' then -- addr=0
            nextState <= Controle;
          end if;

        when Controle => -- Estado de controle
          if fimDaImagem='1' then -- addr>=4799
            nextState <= Inicio;
          elsif pontoTerminou='1' then --addr<4800 and addr/=0
            nextState <= DesenhandoQuadrado;
          elsif wren='1' and pixelPreto='0' then
            nextState <= Branco;
          elsif wren='1' and pixelPreto='1' and achou='0' then
            nextState <= PrimeiroPreto;
          elsif wren='1' and pixelPreto='1' and achou='1' then
            nextState <= QualquerPreto;
          end if;

        when Branco => -- Qualquer Pixel branco
          nextState <= Controle;

        when PrimeiroPreto => -- Primeiro pixel preto encontrado
          nextState <= Controle;

        when QualquerPreto => -- Outros pixels pretos encontrados
          nextState <= Controle;

        when DesenhandoQuadrado => -- Achando o ponto inteiro: desenha Quadrado
          if fimDaImagem='1' then -- addr>=4799"?????"
            nextState <= Inicio;
          end if;

      end case;
    end process;

    -- Memory element (state)
    Memoria: process(clk, reset) is
    begin
      if reset='0' then
        actualState <= Inicio;
      elsif rising_edge(clk) then
        actualState <= nextState;
      end if;
    end process;

    -- Output-logic
    -- Controle componente PosicaoPonto.vhd
    inicio_ij <= '1' when actualState=PrimeiroPreto else '0';
    verifica_ij <= '1' when actualState=QualquerPreto else '0';

    -- Controle componente Comparadores.vhd
    estadoInicio <= '1' when actualState=Inicio else '0';
    estadoPrimeiroPreto <= '1' when actualState=PrimeiroPreto else '0';
    achou <= '0' when actualState=Inicio else '1' when actualState=PrimeiroPreto else achou;
    achouPrimeiroPreto <= achou;

    -- Controle componente DesenhandoQuadrado.vhd
    ativarQuad <= '1' when actualState=DesenhandoQuadrado else
                  '0' when actualState=PrimeiroPreto or (fimDaImagem='1' and achou='0') else ativarQuad;
    ativaQuadrado <= ativarQuad;


  end architecture;
