library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Alunos: João Vicente Souto e Valdivino Morais
-- Projeto SD : Reconhecimento de um ponto

entity Top_AchandoPonto is
  port (
    wren, CLOCK_50 : in std_logic;
    reset : in Std_logic;
    wrAddress, rdAddress: in std_logic_vector(12 downto 0); -- wr = write / rd = read
    data_capture, data_ram : in std_logic_vector(15 DOWNTO 0);
    data_out : out std_logic_vector(15 DOWNTO 0)
  );
end entity;

architecture behav of Top_AchandoPonto is

  component FSM_AchandoPonto is
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
  end component;

  component Comparadores is
    port (
      wren, pixelNoAglomerado, achouPrimeiroPreto, estadoInicio, estadoPrimeiroPreto, contaPretosNoPonto: in std_logic;
      addr, r, g, b : in integer; -- endereço de escrita, convertido antes de entrada
      pixelPreto, addrIgualZero, fimDaImagem, pontoTerminou : out std_logic
    );
  end component;

  component WrenSync is
    port (
      wren_in	: in  std_logic;
      clk : in 	std_logic;
      wren_out : out std_logic
    );
  end component;

  component PosicaoPonto is
    port (
      inicio_ij, verifica_ij : in std_logic;
      addr : in integer; -- endereço de escrita, convertido antes de entrada
      menorIFinal, menorJFinal, maiorIorIFinal, maiorIorJFinal : out integer;
      pixelNoAglomerado : out std_logic
    );
  end component;

  component DesenhaQuadrado is
    port (
      ativaQuadrado : in std_logic;
      addr : in integer; -- endereço de leitura, convertido antes de entrada
      data : in std_logic_vector(15 downto 0);
      menorI, menorJ, maiorI, maiorJ : in integer;
      data_vga : out std_logic_vector(15 downto 0)
    );
  end component;

  signal verifica_ij, inicio_ij, contaPretosNoPonto, ativaQuadrado : std_logic;
  signal estadoInicio, estadoPrimeiroPreto, achouPrimeiroPreto, wren_out : std_logic;
  signal pontoTerminou, fimDaImagem, addrIgualZero, pixelPreto, pixelNoAglomerado : std_logic;
  signal wrAddr, rdAddr, menorI, menorJ, maiorI, maiorJ, r, g, b : integer := 0;

  begin
    wrAddr <= to_integer(unsigned(wrAddress));
    rdAddr <= to_integer(unsigned(rdAddress));
    r  <= to_integer(unsigned(data_capture(7 downto 4)));
    g  <= to_integer(unsigned(data_capture(11 downto 8)));
    b  <= to_integer(unsigned(data_capture(3 downto 0)));

    FSM: FSM_AchandoPonto port map (
      clk => clock_50,
      wren => wren_out,
      reset => reset,
      pixelNoAglomerado => pixelNoAglomerado,
      pontoTerminou => pontoTerminou,
      pixelPreto => pixelPreto,
      addrIgualZero => addrIgualZero,
      fimDaImagem => fimDaImagem,
      inicio_ij => inicio_ij,
      verifica_ij => verifica_ij,
      estadoInicio => estadoInicio,
      estadoPrimeiroPreto => estadoPrimeiroPreto,
      achouPrimeiroPreto => achouPrimeiroPreto,
      contaPretosNoPonto => contaPretosNoPonto,
      ativaQuadrado => ativaQuadrado
    );

    Comparador: Comparadores port map (
      wren => wren_out,
      pixelNoAglomerado => pixelNoAglomerado,
      achouPrimeiroPreto => achouPrimeiroPreto,
      estadoInicio => estadoInicio,
      estadoPrimeiroPreto => estadoPrimeiroPreto,
      contaPretosNoPonto => contaPretosNoPonto,
      addr => wrAddr,
      r => r,
      g => g,
      b => b,
      pixelPreto => pixelPreto,
      addrIgualZero => addrIgualZero,
      fimDaImagem => fimDaImagem,
      pontoTerminou => pontoTerminou
    );

    Sync_Escrita: WrenSync port map (
      wren_in	=> wren,
      clk => CLOCK_50,
      wren_out => wren_out
    );

    PosPonto: PosicaoPonto port map (
      inicio_ij => inicio_ij,
      verifica_ij => verifica_ij,
      addr => wrAddr, -- endereço de escrita, convertido antes de entrada
      menorIFinal => menorI,
      menorJFinal => menorJ,
      maiorIorIFinal => maiorI,
      maiorIorJFinal => maiorJ,
      pixelNoAglomerado => pixelNoAglomerado
    );

    DrawRect: DesenhaQuadrado port map (
      ativaQuadrado => ativaQuadrado,
      addr => rdAddr, -- endereço de leitura, convertido antes de entrada
      data => data_ram,
      menorI => menorI,
      menorJ => menorJ,
      maiorI => maiorI,
      maiorJ => maiorJ,
      data_vga => data_out
    );

end architecture;
