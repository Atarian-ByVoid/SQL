select * from Funcionarios;
select * from Voos;
select * from Pilota;
select * from Aeronaves;
select * from Certificado;

/*Atividade
A.
Mostre
os todos os voos de/para e o preço, em ordem crescente de acordo com o preço
B.
Mostre
os todos os voos com duração ( de mais 6 horas e ordene de acordo com destino
C.
Mostre
os todos os funcionários que ganham mais de 10000 e mostre seus nomes em ordem alfabética
D.
Encontre
os nomes das aeronaves tais que todos os pilotos certificados para operá las ganhem mais do que
6000
E.
Encontre
as destinos e o nome dos pilotos de voos que saem de SP
F.
Identifique
as rotas que podem ser pilotadas por todo piloto que ganha mais do 7000
G.
Mostre
todas as Aeronaves com autonomia entre 1000 3000 ou 4000 e os pilotos certificados a opera las
H.
Encontre
os Pilotos certificados para operar um K 390 mas não Super Tucano

*/

select De,Para,Preco
from Voos 
order by Preco;

select Num_Voo,Distancia,Para
from Voos
where Distancia >'6:00'
order by Para >'6:00';

select  Nome,Salario
from Funcionarios
where Salario> '16000'
order by Nome ;

select Nome_Aero
from Aeronaves
where Nome_Aero <> 'Sturzkampfgeschwader';



