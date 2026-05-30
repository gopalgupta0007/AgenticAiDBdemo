
CREATE PROCEDURE [dbo].[usp_GetTodaysSales]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        CAST(GETDATE() AS DATE) AS SalesDate,
        COUNT(DISTINCT OrderId) AS TotalOrders,
        SUM(LineTotal) AS TotalSalesAmount
    FROM vw_SalesDetails
    WHERE 
        CAST(OrderDate AS DATE) = CAST(GETDATE() AS DATE)
        AND OrderStatus = 'Completed'
        AND PaymentStatus = 'Paid';
END;
GO

GRANT EXECUTE
    ON OBJECT::[dbo].[usp_GetTodaysSales] TO [agent_reader]
    AS [dbo];
GO

