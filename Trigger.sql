Create Table ColumnTable(
Id Int,
Employee VARCHAR(50),
salary VARCHAR(50),
City VARCHAR(50)
)

Insert Into ColumnTable ( Id,Employee,salary,City)
Values(6,'Man',5000,'China')

Select * from ColumnTable

CREATE TRIGGER [schema_name.]trigger_name
ON table_name
AFTER  {[INSERT],[UPDATE],[DELETE]}
[NOT FOR REPLICATION]
AS
{sql_statements}


CREATE TRIGGER AutoTrigger
ON ColumnTable
AFTER INSERT
AS 

INSERT INTO ColumnTable(Employee,salary,City)
VALUES()
END