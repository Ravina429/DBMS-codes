select city, COUNT(*) From ex1 where state='Maharashtra' group by city having count(*)>1 order by city 