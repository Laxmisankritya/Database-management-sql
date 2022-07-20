
SELECT MAX(price * sales)
   AS "Max history revenue"
FROM titles
WHERE type = 'history';

-------
SELECT MIN(pages) as "MIN history pages"
FROM titles
WHERE type = 'history';

-------hpw much royalties 
SELECT SUM(advance) AS "TOTAL advances"
FROM royalties

--------
SELECT title_id, au_order, royalty_share
from title_authors
WHERE royalty_share <> 0
GROUP BY royalty_share ;

-------------
Select Title_name, pub_id, sales
FROM titles
GROUP BY pub_id
having (price*sales) < 20000;
--------
SELECT title_name, type, price
FROM titles
WHERE Sales > 1000
Group By type ;

SELECT au_fname, au_lname, a.city, p.pub_name
  FROM authors a
INNER JOIN publishers p
ON a.city = p.city;

SELECT 
      t.title_id;
      t.title_name,
      t.pub_id,
      p.pub_name
FROM titles titles titles t 
INNER JOIN publishers 

---list the book that each author wrote
SELECT 
  a.au_id,
  a.au_fname,
  a.au_lname,
  ta.title_id
FROM authors a 
INNER JOIN title_authors ta
   ON a.au_id = ta.au_id 
ORDER BY a.au_id ASC, ta.title_id ASC;

------
SELECT 
 a.au_id,
 a.au_fname,
 a.au_lname,
 a.city,
 a.state
FROM authors a 
INNER JOIN publishers p 
 ON a.city = p.city
 AND a.state = p.state
 ORDER BY a.au_id ASC;

--------
SELECT 
  t.title_id,
  t.title_name,
  p.state,
  p.country
FROM titles t 
INNER JOIN publishers p 
  ON t.pub

SELECT a.au.id,
  COUNT(ta.title_id) AS "NuM BOOKS"
from authors a 
INNER JOIN title_authors ta
    ON a.au_id = ta.au.au_id
 Group BY a.au_id
Order BY a.au_id ASC;

SELECT
  t.title.id,
  t.title_name,
  r.advance
  t.type
  from royalties r
INNER JOIN title t
   ON r.title_id = t.title_id
   WHERE t.type = 'BIOGRAPHY'
   ORDER BY r.advance DESC;


ELECT
  t.type,
  COUNT(r.advance) AS "COUNT(r.advance)",
  SUM(r.advance) AS "SUM(r.advance)"
  FROM royalties r 
  INNER JOIN titles t
  ON r.title_id = t.title_id
  WHERE r.advance IS NOT NULL 
 GROUP BY t.type , t.pub_id
 ORDER BY t.type ASC, t.pub_id ASC;
