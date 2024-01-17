-- a) Create the following roles: user, manager, owner. Grant all privileges to owner, read privileges to user, and insert privileges to manager.
CREATE ROLE "user";
CREATE ROLE manager;
CREATE ROLE "owner";
GRANT ALL PRIVILEGES ON DATABASE TO "owner";
GRANT SELECT ON DATABASE TO "user";
GRANT INSERT ON DATABASE TO manager;

-- b) Create a new role: trainee. Grant privileges only to columns orderdate and shippeddate to trainee and set the role valid until 30.5.2022.
CREATE ROLE trainee;
GRANT ALL PRIVILEGES (orderdate,shippeddate) ON orders TO trainee;
ALTER ROLE trainee VALID UNTIL '30.05.2022.';

-- c) Create a function get_shipping_info(varchar) that returns a table. 
-- The table should have the following columns shipname, shipaddress, shipcity, shipcountry. 
-- The function should return orders where the shipname matches the given string.
CREATE OR REPLACE FUNCTION get_shipping_info(inp varchar(40))
RETURNS TABLE (
        shipname VARCHAR(40), 
		shipaddress VARCHAR(60), 
		shipcity VARCHAR(15), 
		shipcountry VARCHAR(15)
) 
LANGUAGE PLPGSQL
AS $$
BEGIN
	RETURN QUERY SELECT
        orders.shipname, orders.shipaddress, orders.shipcity, orders.shipcountry
    FROM
        orders
    WHERE
        orders.shipname=inp;
END;
$$;

-- d) 
CREATE OR REPLACE FUNCTION get_shipping_info(inp varchar, tim timestamp, cash money)
RETURNS TABLE (
        shipname VARCHAR(40), 
		shipaddress VARCHAR(60), 
		shipcity VARCHAR(15), 
		shipcountry VARCHAR(15)
) 
LANGUAGE PLPGSQL
AS $$
BEGIN
	RETURN QUERY SELECT
        orders.shipname, orders.shipaddress, orders.shipcity, orders.shipcountry
    FROM
        orders
    WHERE
        orders.shipname=inp
		AND orders.orderdate>=tim
		AND orders.freight BETWEEN (cash::numeric-10)::money AND (cash::numeric+10)::money;
END;
$$;