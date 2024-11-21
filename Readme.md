# what is this?

quick script to create a toy db out of a sql file

## example:
```
./quickdb initdb.example.sql
...
postgres=# select * from tablea;
 id | mark |  name
----+------+--------
  1 |   10 | josh
  1 |   20 | josh
  1 |    5 | Josh
  2 |  100 | greg
  2 |  200 | greg
  3 | 1000 | andrew
  3 | 5000 | andrew
(7 rows)

postgres=#
```
