CREATE TABLE [dbo].[Orders] (
    [OrderId]       INT           IDENTITY (1, 1) NOT NULL,
    [CustomerId]    INT           NOT NULL,
    [OrderDate]     DATETIME      DEFAULT (getdate()) NOT NULL,
    [OrderStatus]   NVARCHAR (30) NOT NULL,
    [PaymentStatus] NVARCHAR (30) NOT NULL,
    PRIMARY KEY CLUSTERED ([OrderId] ASC),
    FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customers] ([CustomerId])
);
GO

GRANT SELECT
    ON OBJECT::[dbo].[Orders] TO [agent_reader]
    AS [dbo];
GO

