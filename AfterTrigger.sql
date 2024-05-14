CREATE TABLE inventory (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    quantity INT
);

CREATE TABLE inventory_logs (
    log_id INT PRIMARY KEY,
    product_id INT,
    old_quantity INT,
    new_quantity INT,
    change_date TIMESTAMP
);


CREATE TRIGGER [dbo].[ProductDetails]

ON [dbo].inventory

AFTER INSERT

AS
BEGIN

    INSERT INTO inventory_logs (product_id, old_quantity, new_quantity)
   VALUES ('NEW.product_id', NULL, 'NEW.quantity');

END
