-------------------------------------------------------------------------------
-- HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
-- Institut REDS, Reconfigurable & Embedded Digital Systems
--
-- File         : Addn.vhd
-- Description  : Additionneur n bits avec carry in & carry out
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
-- 1.0      YNG     28.01.25    Update header
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity addn is
	generic( N : positive range 1 to 32 := 4);
  port (nbr_a_i   : in  std_logic_vector(N - 1 downto 0);
        nbr_b_i   : in  std_logic_vector(N - 1 downto 0);
        cin_i     : in  std_logic;
        somme_o   : out std_logic_vector(N - 1 downto 0);
        cout_o    : out std_Logic
        );
end addn;

architecture flot_don of addn is

  signal na_s, nb_s : unsigned(N downto 0);
  signal cin_s      : unsigned(0 downto 0);
  signal somme_s    : unsigned(N downto 0);

  
begin

  
  -- convertir les signaux en unsigned
  na_s <= '0' & unsigned(nbr_a_i);
  nb_s <= '0' & unsigned(nbr_b_i);
  cin_s(0) <= cin_i;
	
  -- addittion avec carry in 
  somme_s <= na_s + nb_s + cin_s;
  -- la sortie prend les N bits de poids failbe
  somme_o <= std_logic_vector(somme_s(N - 1 downto 0));
  -- cout prend le bit de poid fort
  cout_o <= somme_s(N);


end flot_don;
