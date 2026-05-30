
CREATE VIEW vw_SalesDetails AS
SELECT
    o.OrderId,
    o.OrderDate,
    o.OrderStatus,
    o.PaymentStatus,
    c.CustomerId,
    c.FullName AS CustomerName,
    c.City,
    p.ProductId,
    p.ProductName,
    p.Category,
    oi.Quantity,
    oi.UnitPrice,
    oi.Quantity * oi.UnitPrice AS LineTotal
FROM Orders o
INNER JOIN Customers c 
    ON o.CustomerId = c.CustomerId
INNER JOIN OrderItems oi 
    ON o.OrderId = oi.OrderId
INNER JOIN Products p 
    ON oi.ProductId = p.ProductId;
GO

GRANT SELECT
    ON OBJECT::[dbo].[vw_SalesDetails] TO [agent_reader]
    AS [dbo];
GO

