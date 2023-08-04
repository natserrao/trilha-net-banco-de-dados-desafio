-- 1 --
SELECT 
	Nome, 
	Ano
FROM Filmes;

-- 2 --

SELECT 
	Nome, 
	Ano,
	Duracao
FROM Filmes
ORDER BY Ano ASC;

-- 3 --

SELECT * FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

-- 4 --

SELECT * FROM Filmes
WHERE Ano = 1997;

-- 5 --

SELECT * FROM Filmes
WHERE Ano > 2000;

-- 6 --

SELECT * FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

-- 7 --

SELECT
    Ano,
    COUNT(*) AS Quantidade
FROM
    Filmes
GROUP BY
    Ano
ORDER BY
    SUM(Duracao) DESC;


-- 8 --

SELECT 
	*
FROM
	Atores
WHERE Genero = 'M';

-- 9 --

SELECT 
	*
FROM
	Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC;

-- 10 --

SELECT
	F.Nome,
	G.Genero 
FROM 
	Filmes F
INNER JOIN 
	FilmesGenero ON F.Id = FilmesGenero.IdFilme
INNER JOIN
	Generos G ON FilmesGenero.IdGenero = G.Id

-- 11 --

SELECT
	F.Nome,
	G.Genero 
FROM 
	Filmes F
INNER JOIN 
	FilmesGenero ON F.Id = FilmesGenero.IdFilme
INNER JOIN
	Generos G ON FilmesGenero.IdGenero = G.Id
WHERE
	G.Genero = 'Mistério'


-- 12 -- 

SELECT 
	F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	E.Papel
FROM
	Atores A
INNER JOIN
	ElencoFilme E ON E.IdAtor = A.Id
INNER JOIN
	Filmes F ON F.Id = E.IdFilme;