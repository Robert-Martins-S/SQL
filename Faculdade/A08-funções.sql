use bd_livro_qui_manha

-- Year, month and day
select isbn, titulo, dt_livro, year(dt_livro) Ano from tb_livro

-- Mostra a data do servidor detalhado
--select isbn, titulo, dt_livro, curdate() as data_curdate, now() as data_now from tb_livro (MySQL)

select isbn, titulo, dt_livro, getdate() data_getdate from tb_livro

select isbn, titulo, dt_livro, DATEDIFF(year, dt_livro, getdate()) diferenca_dias from tb_livro