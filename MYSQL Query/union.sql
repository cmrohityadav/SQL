-- Union 
-- It is used to combine the result- set of two or more 
-- select statements 
-- every select should have same no of column
-- column must have similar data type
-- columns in every select should be in same order


-- Union : give unique
select name from tablename
union 
select name from otherTableName;

-- UNION ALL: it give duplicate too
select name from tablename
union all
select name from otherTableName;

