/*Seletores Acumuladores e Filtros*/
use empregados_db;
select * from departamento where cod_depto>2 and cod_depto<5;
select * from departamento where cod_depto%2=0;
select * from departamento where cod_depto%2=1;
select count(*) as num_depto from departamento;
select * from departamento where cod_depto>3;

/*Pratica de Acumuladores e Filtros*/
select * from empregado;
select * from empregado where salario <= (1413 *3);
select * from empregado where cod_depto = 1;

select * from empregado e 
inner join departamento d 
on e.cod_depto = d.cod_depto;

select * from empregado where cod_depto in(1,2,5);
select * from empregado where cod_depto not in(1,2,5);
select * from empregado where  not salario <= (1413 *3);
select * from empregado where nome like "ANA %";

