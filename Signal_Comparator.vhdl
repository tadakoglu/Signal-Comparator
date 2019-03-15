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
--BURASI ASIL PROJEDÝR.

library ieee;
use ieee.std_logic.all;

entity projemiz is -- bu projede az önce oluþturduðum tek bitlik karþýlaþtýrýcý projesini yani entity'sini kullanarak bir iki bitlik karþýlaþtýrýcý yapacðým.

port(

bitGelen:in std_logic; -- bu sinyallere birazdan haritalama-mapping yapacaðým
bitGelen:in std_logic;
esitMiGelen: out std_logic;

);

end entity;


architecture mimari of projemiz is

component karsilastirici -- burada aynen karþýlaþtýrýcýmýzýn portlarý girilir.
port(
bit1:in std_logic;
bit2:in std_logic;
esitMi: out std_logic;
);
end component 


-- componentler "architecture" içerisinde ve architecture "begin satýrý üzerinde" tanýmlanmalý.
begin



dongu: for i in 0 to 1 generate

coklayicim: karsilasirici port map to( -- burada karþýlaþtýrýcý entitymiz üzerindeki sinyalere bu projedeki sinyallerimizi haritalama yapýyoruz.
bit1 => bitGelen;
bit2 => bitGelen2;
esitMi => esitMiGelen; -- buradaki => operatörü sinyal haritalama operatörü'dür <= ise atama operatörü 

end generate 

);

end architecture;

