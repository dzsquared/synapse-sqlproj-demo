CREATE TABLE [dbo].[FactFinance] (
    [FinanceKey]         INT           NULL,
    [DateKey]            INT           NULL,
    [OrganizationKey]    INT           NULL,
    [DepartmentGroupKey] INT           NULL,
    [ScenarioKey]        INT           NULL,
    [AccountKey]         INT           NULL,
    [Amount]             FLOAT (53)    NULL,
    [Date]               DATETIME2 (7) NULL
)
WITH (CLUSTERED COLUMNSTORE INDEX, DISTRIBUTION = ROUND_ROBIN);

