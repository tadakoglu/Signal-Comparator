library ieee;
use ieee.std_logic.all;

entity karsilastirici is

port(

bit1:in std_logic;
bit2:in std_logic;
esitMi: out std_logic;



);

end entity;


architecture mimari2 of karsilastirici is

begin

if 'bit1' = 'bit2' then
esitMi = b'1';
else
esitMi = b'0';
end if;


end architecture;



---------------------------------------------------------
--BURASI ASIL PROJED�R.

library ieee;
use ieee.std_logic.all;

entity projemiz is -- bu projede az �nce olu�turdu�um tek bitlik kar��la�t�r�c� projesini yani entity'sini kullanarak bir iki bitlik kar��la�t�r�c� yapac��m.

port(

bitGelen:in std_logic; -- bu sinyallere birazdan haritalama-mapping yapaca��m
bitGelen:in std_logic;
esitMiGelen: out std_logic;

);

end entity;


architecture mimari of projemiz is

component karsilastirici -- burada aynen kar��la�t�r�c�m�z�n portlar� girilir.
port(
bit1:in std_logic;
bit2:in std_logic;
esitMi: out std_logic;
);
end component 


-- componentler "architecture" i�erisinde ve architecture "begin sat�r� �zerinde" tan�mlanmal�.
begin



dongu: for i in 0 to 1 generate

coklayicim: karsilasirici port map to( -- burada kar��la�t�r�c� entitymiz �zerindeki sinyalere bu projedeki sinyallerimizi haritalama yap�yoruz.
bit1 => bitGelen;
bit2 => bitGelen2;
esitMi => esitMiGelen; -- buradaki => operat�r� sinyal haritalama operat�r�'d�r <= ise atama operat�r� 

end generate 

);

end architecture;

