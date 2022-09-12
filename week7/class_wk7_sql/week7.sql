INSERT INTO `articles` (`id`, `title`, `text`, `bookid`) 
VALUES (NULL, 'book1', 'blablabla', '1'), (NULL, 'blablabla2', 'book2', '2');



update articles
set title  = 'libro2'
where bookid=2;