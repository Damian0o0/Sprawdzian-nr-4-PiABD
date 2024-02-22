--Grupa2
--1.	zsumuj liczbę mieszkańców miast i pogrupuj je według kodu państwa na (a,d)
	select sum(population) as liczba, country as kod_panstwa from city where country like '[a,d]' group by country order by liczba desc;
--2.	Policz powierzchnię  Afryki i Europy z tabeli continent
	select sum(area) as powierzchnia from continent where name like '[Africa, Europe]%'

--3.	znajdź największe państwo zaczynające się na literę k
	select max(area) as najwieksze_panstwo_na_k  from country where name like 'K%';

--4.	Policz jak jest różnica wielkości pomiędzy  wyspami z tabeli island dla wysp zaczynających się na c i k


--5.	policz ile jest miast w państwach o kodzie  PL i D oraz pogrupuj je według kodu
	

--6.	policz wszystkie jeziora zaczynających się na literę  b ,f i k
	select count(name) as 'wszystkie jeziora zaczynających się na literę  b ,f i k ' from lake where name like 'b%' or name like 'f%' or name like 'k%';

--7.	policz ile jest jezior, ale pomiń te jeziora które nie posiadają powierzchni
	select count(name) as jeziora_bez_powierzchni from lake where area is null;

--8.	znajdź średnią wielkość państw zaczynających się na literę G i K
	 select avg(area) as srednia_wielkosc_panstw from country where name like 'g%' or name like 'k%'
--9.	policz ile jest państw o kodzie zaczynającym się na literę b
	
		
	
--10.	znajdź średnią populacje miast, których kod jest z zakresu b-h
	select avg(population) as 'średnie zaludniane miasto na t i m' from city where name like 'K%' or name like 'M%'

--11.	znajdź najmniejszą i największą wyspę z zakresu  c, e, f, k
	select sum(area) from island where name like '[c, e, f, k,]%' group by country;

--12.	 zsumuj liczbę mieszkańców miast i pogrupuj je według kodu państwa na (a,d i t) 
	select sum(population) as liczba, country as kod_panstwa from city where country  like 'a%' or name like 'd%' or name like 't%' group by country order by liczba desc;

--13.	 zsumuj liczbę mieszkańców miast i pogrupuj je według kodu państwa na (a-t)  
	select sum(population) as liczba, country as kod_panstwa from city where country like '[a-t]' group by country order by liczba desc;