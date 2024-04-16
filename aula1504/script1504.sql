/*Extraçõ com Subquery*/
use empregados_db;

select cod_depto from departamento where cod_depto % 2 = 0;

select * from empregado where cod_depto 
in(
select cod_depto from departamento where cod_depto < 2 = 0
);

/*Calculo com datas*/

Select *, floor((datediff(now(),dt_nascimento)/365)) as idade  from dependente;

select * from empregado where cod_emp in(
Select cod_emp from dependente where (floor((datediff(now(),dt_nascimento)/365) <18))
);

