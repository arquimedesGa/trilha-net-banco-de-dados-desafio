--1

SELECT Nome, Ano from Filmes;

--2

SELECT Nome, Ano from Filmes order by Ano;

--3

SELECT Nome, Ano, Duracao from Filmes where nome = 'De Volta para o Futuro';

--4

SELECT Nome, Ano, Duracao from Filmes where ano = 1997;

--5

SELECT Nome, Ano, Duracao from Filmes where ano > 2000;

--6

SELECT Nome, Ano, Duracao from Filmes where Duracao > 100 and Duracao < 150 order by Duracao;

--7

SELECT
    Ano,
    COUNT(*) AS Quantidade
FROM
    Filmes
GROUP BY
    Ano
ORDER BY
    Quantidade DESC;

--8

SELECT PrimeiroNome, UltimoNome from Atores where Genero = 'M';

--9

SELECT PrimeiroNome, UltimoNome from Atores where Genero = 'F' order by PrimeiroNome;

--10

Select Nome, Genero from Filmes 
inner join FilmesGenero on Filmes.Id = FilmesGenero.IdFilme 
inner join Generos on Generos.Id = FilmesGenero.IdGenero;

--11

 Select Nome, Genero from Filmes 
 inner join FilmesGenero on Filmes.Id = FilmesGenero.IdFilme 
 inner join Generos on Generos.Id = FilmesGenero.IdGenero 
 where Genero = 'Mistério';

 --12

 Select Nome, PrimeiroNome, UltimoNome, Papel From Filmes 
 inner join ElencoFilme on Filmes.Id = ElencoFilme.IdFilme 
 inner join Atores on ElencoFilme.IdAtor = Atores.Id;
