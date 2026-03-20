-------------------------------------------------------------------------------
-- HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
-- Institut REDS, Reconfigurable & Embedded Digital Systems
--
-- File         : Add4.vhd
-- Description  : Additionneur 4 bits avec carry in & carry out
--                carry out et overflow out
--
-- Author       : Etienne Messerli
-- Date         : 10.10.14
-- Version      : 0.0
--
-- Dependencies : 
--
--| Modifications |------------------------------------------------------------
-- Version  Author  Date        Description
-- 0.0      EMI     10.10.14    Initial version.
-- 1.0      EMI     27.03.19    Version additionneur avec c_in, c_out et ovr_out
-- 2.0      YNG     28.01.25    Update header
------------------------------------------------------------------------------

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity addn_full is
	generic( N : positive range 1 to 32 := 4);
  port (nbr_a_i   : in  std_logic_Vector(N-1 downto 0);
        nbr_b_i   : in  std_logic_Vector(N-1 downto 0);
        cin_i      : in  std_logic;
        somme_o    : out std_logic_Vector(N-1 downto 0);
        cout_o     : out std_Logic;
        ovr_o      : out std_logic);
end addn_full;

architecture struct of addn_full is

  -- signaux internes
  signal somme_s    : std_logic_Vector(N-1 downto 0);
  signal cout1_s    : std_logic;
  signal cout2_s    : std_logic;
  
  
  
  -- component declaration

  
  
  
begin

	-- afin d'avoir les deux dernières retenues, on effectue deux additions: 
	-- une sans le dernier bit et l'autre qu'avec le dernier bit (et la retenu de la premiere)
	add3 : entity work.addn
	generic map(
		N => N-1
		)
	port map(
		nbr_a_i => nbr_a_i(N-2 downto 0),
		nbr_b_i => nbr_b_i(N-2 downto 0),
		cin_i   => cin_i,
		somme_o => somme_s(N-2 downto 0),
		cout_o  => cout1_s
		);
	
	add1 : entity work.addn
	generic map(
		N => 1
		)
	port map(
		nbr_a_i => nbr_a_i(N-1 downto N-1),
		nbr_b_i => nbr_b_i(N-1 downto N-1),
		cin_i   => cout1_s,
		somme_o => somme_s(N-1 downto N-1),
		cout_o  => cout2_s
		);

	-- ovr prend le xor des deux cout
   ovr_o <= cout1_s xor cout2_s;
	somme_o <= somme_s;
	cout_o <= cout2_s;
  


end struct;