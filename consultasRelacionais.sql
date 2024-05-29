--/* query 1 */
SELECT Nome, Ano FROM Filmes

--/* query 2 */
SELECT Nome, Ano, Duracao FROM Filmes
ORDER BY Ano

--/* query 3 */
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

--* query 4 */
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = 1997

--/* query 5 */
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano > 2000

--/* query 6 */
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100
  AND Duracao < 150
ORDER BY Duracao

--/* query 7 */
SELECT Ano, COUNT(Ano) Quantidade FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--/* query 8 */
SELECT * FROM Atores
WHERE Genero = 'M'

--/* query 9 */
SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--/* query 10 */
SELECT Filmes.Nome, Generos.Genero FROM FilmesGenero
INNER JOIN Filmes 
	ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos 
	ON FilmesGenero.IdGenero = Generos.Id

--/* query 11 */
SELECT Filmes.Nome, Generos.Genero FROM FilmesGenero
INNER JOIN Filmes 
	ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos 
	ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mistério'

--/* query 12 */
SELECT Filmes.Nome, 
	   Atores.PrimeiroNome,
	   Atores.UltimoNome,
	   ElencoFilme.Papel
FROM ElencoFilme
INNER JOIN Filmes 
	ON ElencoFilme.IdFilme = Filmes.Id
INNER JOIN Atores 
	ON ElencoFilme.IdAtor = Atores.Id