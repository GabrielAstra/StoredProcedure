CREATE OR REPLACE FUNCTION GetCustomerOrders(customer_id_param INT)
RETURNS SETOF orders
AS $$
BEGIN
    RETURN QUERY
    SELECT o.*
    FROM orders o
    WHERE o.customer_id = customer_id_param;
END;
$$ LANGUAGE PLPGSQL;