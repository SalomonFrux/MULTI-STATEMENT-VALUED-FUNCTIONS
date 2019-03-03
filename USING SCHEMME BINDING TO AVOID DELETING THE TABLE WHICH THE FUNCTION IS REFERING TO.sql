
--USING SCHEMME BINDING TO AVOID DELETING THE TABLE WHICH THE FUNCTION IS REFERING TO 


ALTER FUNCTION InlineTableFunction()
RETURNS TABLE 
WITH SCHEMABINDING -- very important to avoid loosiong your data 
AS
RETURN(select name, Age from dbo.tblPersons)

drop table tblPersons -- Cannot DROP TABLE 'tblPersons' because it is being referenced by object 'InlineTableFunction'.