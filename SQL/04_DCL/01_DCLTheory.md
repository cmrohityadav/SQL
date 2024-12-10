# Data Control Language
- DCL commands deal with granting and revoking privileges on the database

## GRANT
- Gives privileges to users or roles

## REVOKE
Takes away privileges from users or

eg.
```sql
GRANT SELECT ON products TO usercmrohityadav

```

```sql
GRANT INSERT,UPDATE ON products TO usersDEVTEAM

```

```sql
REVOKE SELECT ON product FROM usercmrohityadav
```


```sql
REVOKE INSERT,UPDATE ON products FROM usersDEVTEAM

```