USE [Trigger]
GO
/****** Object:  Trigger [dbo].[ProductDetails]    Script Date: 14-05-2024 11:35:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER TRIGGER [dbo].[ProductDetails]

ON [dbo].[inventory]

AFTER INSERT

AS
BEGIN

    INSERT INTO inventory_logs (product_id, old_quantity, new_quantity)
   VALUES ('NEW.product_id', NULL, 'NEW.quantity');

END

CREATE TABLE STUDENT(
   Name varchar(35),
   Age INT,
   Score INT,
   Grade CHAR(10)
);


--Before Trigger
ALTER TRIGGER [dbo].[sample_trigger] 

ON [dbo].[STUDENT] 

BEFORE INSERT

AS
BEGIN

IF NEW.Score < 35 THEN SET NEW.Grade = 'FAIL';

ELSE

SET NEW.Grade = 'PASS';

END 

