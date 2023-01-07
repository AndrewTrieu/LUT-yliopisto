-- a) Create a procedure that adds X amount of days (given by the user)  to the "requireddate" value based on custid or orderid. 
--If orderid given is NULL, the procedure runs based on custid. 
--The procedure takes three arguments: orderid (int), custid (int), and numbers of day (string)
CREATE PROCEDURE HW3a("ordern" integer,"cust" integer, "daynum" char)
language plpgsql    
AS $$
BEGIN
	IF (ordern is null) THEN
		UPDATE orders SET requireddate= requireddate + (daynum||' days')::interval
		WHERE custid = "cust";
	ELSE 
		UPDATE orders SET requireddate= requireddate + (daynum||' days')::interval
		WHERE orderid = "ordern";
	END IF;
END;
$$

-- b) Create a procedure that adds 10 % to the freight money
CREATE PROCEDURE HW3b()
language plpgsql    
AS $$
BEGIN
	UPDATE orders SET freight = freight*1.1;
END;
$$

-- c) Create a procdeure that rounds the freight costs to nearest 10 €
CREATE PROCEDURE HW3c()
language plpgsql    
AS $$
BEGIN
	UPDATE orders SET freight = round(freight::numeric, -1)::money;
END;
$$

-- d) Add a new column 'shippedBeforeRequired' to Orders table (using ALTER command) of boolean type. 
-- Create a procedure that sets 'shippedBeforeRequired' to true if shippeddate is smaller than requrieddate and false if vice-versa
ALTER TABLE orders ADD COLUMN shippedBeforeRequired BOOLEAN;
CREATE PROCEDURE HW3d()
language plpgsql    
AS $$
BEGIN
		UPDATE orders SET shippedBeforeRequired=true WHERE shippeddate<orders.requireddate;
		UPDATE orders SET shippedBeforeRequired=false WHERE shippeddate>orders.requireddate;
END;
$$
