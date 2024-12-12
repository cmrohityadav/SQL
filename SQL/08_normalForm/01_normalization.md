# Normalization
## 1NF
### Key Requirement of 1 NF
#### Atomicity
- All the value in a column should be atomic (indivisible). 
-Each column must contain a single value, not a set of value
- Ek cell me ek hi value ho
- NOT LIKE THIS
```sql
INSERT INTO orders(customerName,products,qty)
VALUES('person1','T-shirt,mobile,jeans','2,3,4')
```


#### Unique Column Names
- Each column should have unique name

#### Uniqueness of Records
- Each record(row) must be unique
- There should be a primary key or a away to unique identify each

#### No Repeating Groups
- There should be no multiple value (or array )stored in a single column for a record
