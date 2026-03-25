-------------------------------------------------------------------------------
-- HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
-- Institut REDS, Reconfigurable & Embedded Digital Systems
--
-- Fichier      : alu_nbits_top.vhd
--
-- Description  : ALU N bits comportant 6 fonctions arithmetiques et 
--                2 fonctions logique
-- 
-- Auteur       : Etienne Messerli
-- Date         : 20.03.2018 (version labo ALU 2018)
-- Version      : 1.0
-- 
--| Modifications |------------------------------------------------------------
-- Version        Date       Auteur        Description
-- 1.0            23.03.26   RHI
-------------------------------------------------------------------------------

library ieee;
  use ieee.std_logic_1164.ALL;
  use ieee.numeric_std.ALL;

entity alu_nbits_top is
  generic( N : positive range 1 to 16 := 4);
   port(
      opcode_i      : in  std_logic_vector(2 downto 0);   
      na_i          : in  std_logic_vector(N-1 downto 0);
      nb_i          : in  std_logic_vector(N-1 downto 0);
      result_o      : out std_logic_vector(N-1 downto 0);
      z_o           : out std_logic;
      dep_nsgn_o    : out std_logic;
      dep_sgn_o     : out std_logic
   );
end alu_nbits_top ;


architecture struct of alu_nbits_top is

-- Signaux interne

  -- Bits opcode
  signal op2_s : std_logic;
  signal op1_s : std_logic;
  signal op0_s : std_logic;

  -- Opérandes
  signal val1_s : std_logic_vector(N-1 downto 0);
  signal val2_s : std_logic_vector(N-1 downto 0);

  -- Résultat additionneur
  signal res_add_s  : std_logic_vector(N-1 downto 0);
  
  -- Résultat final
  signal result_s  : std_logic_vector(N-1 downto 0);

  -- Flags
  signal cin_s  : std_logic;
  signal cout_s : std_logic;
  signal ovr_s  : std_logic;
  
  -- Resultat de portes sur 1bit à étendre sur N bits
  signal op1_nand_not_op0_s : std_logic;
  signal op0_and_not_op1_and_op2_s : std_logic;
  
  -- Bit2 de l'op code étendu sur N bits
  signal op2_Nbits_s : std_logic_vector(N-1 downto 0);
  
  -- na_i et "nb_i xor op2_Nbits_s" séléctioné en fonction op2
  signal mux_mult_ou_soustr_s : std_logic_vector(N-1 downto 0);
  
  -- stock le resultat de "nb_i xor op2_Nbits_s" qui est utilié plusieurs fois
  signal nb_xor_op2Nbits_s : std_logic_vector(N-1 downto 0);

-- Component Declaration

begin

  -- Additionneur
  add_inst : entity work.addn_full
    generic map(N => N)
    port map(
      nbr_a_i => val1_s,
      nbr_b_i => val2_s,
      cin_i   => cin_s,
      somme_o => res_add_s,
      cout_o  => cout_s,
      ovr_o   => ovr_s
    );


  -- Extraction opcode

  op2_s <= opcode_i(2);
  op1_s <= opcode_i(1);
  op0_s <= opcode_i(0);
  
  -- Operande 1
  
  op1_nand_not_op0_s <= op1_s nand not(op0_s);
  val1_s <= na_i and (val1_s'range => op1_nand_not_op0_s);

  -- Operande 2
  
  -- op2 répété sur N bits
  
  op2_Nbits_s <= (val2_s'range => op2_s);
  
  nb_xor_op2Nbits_s <= nb_i xor op2_Nbits_s;
  
  -- choix entre na_i et "nb_i xor op2_Nbits_s" en fonction op2
  
  with op2_s select
   mux_mult_ou_soustr_s <= na_i	when '0',
				  nb_xor_op2Nbits_s 	when '1',
				  (others =>'0')  	when others;
  
 with opcode_i(1 downto 0) select
  val2_s <= nb_xor_op2Nbits_s      					  									when "00",
				mux_mult_ou_soustr_s											 				when "01",
            ((na_i xor op2_Nbits_s) and nb_xor_op2Nbits_s) xor op2_Nbits_s	when "10",
				std_logic_vector(to_unsigned(1, N)) xor op2_Nbits_s    			when "11",
				(others =>'0')																	when others;
  
  -- connection à l'additionneur
  
  cin_s <= (op1_s xnor op0_s) and op2_s;
  
  dep_sgn_o <= ovr_s;
  
  dep_nsgn_o <= cout_s xor (op2_s and (op1_s xnor op0_s));
  
  op0_and_not_op1_and_op2_s <= op0_s and not(op1_s) and op2_s;
  
  result_s <= res_add_s xor (res_add_s'range => op0_and_not_op1_and_op2_s);
  
  -- test résultat nul
  
  z_o <= '1' when (result_s = (result_s'range => '0')) else
  	 '0';
  
  -- afectation résultat final
  
  result_o <= result_s;

end struct;
