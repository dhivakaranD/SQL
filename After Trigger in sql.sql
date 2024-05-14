USE [Employees]
GO
/****** Object:  Trigger [dbo].[AfterAuditChange]    Script Date: 06-05-2024 01:43:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TRIGGER [dbo].[AfterAuditChange]
ON [dbo].[Employee]
AFTER INSERT
AS
BEGIN
    -- Insert a record into the audit table for each insert operation
    IF EXISTS (SELECT * FROM inserted)
    BEGIN
        INSERT INTO AuditTable (Action, EmployeeID, ModifiedDate)
        SELECT 'INSERT', EmployeeID, GETDATE() FROM inserted;
    END;
END;
