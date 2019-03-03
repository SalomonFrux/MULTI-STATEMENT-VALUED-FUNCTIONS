
--MULTI STATEMENT TABLE VALUED FUNCTIONS IN SQL VS INLINE TABLE VALUED FUNCTIONS

-- 1 MULTI STATEMENT TABLE VALUED FUNCTIONS
CREATE FUNCTION MultiStateMent()
RETURNS @table table (id int, name nvarchar(50), age int )
AS 
BEGIN 
INSERT into @table
select ID, Name, Age from tblPersons

RETURN

END 

DROP FUNCTION MultiStateMent

SELECT * from dbo.MultiStateMent()


--2 INLINE TABLE VALUED FUNCTIONS
CREATE FUNCTION InlineTableFunction()
RETURNS TABLE 
AS
RETURN(select name, Age from tblPersons)

SELECT * from InlineTableFunction()