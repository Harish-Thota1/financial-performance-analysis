
------------------------------------------------------------
-- 1. Quarterly Profit & Profit Margin Analysis
------------------------------------------------------------
WITH Revenue AS (
    SELECT 
        DATEPART(QUARTER, Date) AS Quarter, 
        SUM(Actual_Income) AS Revenue
    FROM dbo.Income_Items_Sheet
    GROUP BY DATEPART(QUARTER, Date)
),
Expenses AS (
    SELECT 
        DATEPART(QUARTER, Date) AS Quarter, 
        SUM(Actual_Expense) AS Expense
    FROM dbo.Expense_Items_Sheet
    GROUP BY DATEPART(QUARTER, Date)
)
SELECT
    R.Quarter,
    R.Revenue,
    E.Expense,
    (R.Revenue - E.Expense) AS Profit,
    ((R.Revenue - E.Expense) * 100.0 / R.Revenue) AS Profit_Margin_Percent
FROM Revenue R
JOIN Expenses E ON R.Quarter = E.Quarter
ORDER BY R.Quarter;
GO


------------------------------------------------------------
-- 2. Revenue Contribution by Category (Income)
------------------------------------------------------------
SELECT
    Category_I,
    Cateogry_II,
    SUM(Actual_Income) AS Total_Revenue
FROM dbo.Income_Items_Sheet
GROUP BY Category_I, Cateogry_II
ORDER BY Category_I, Total_Revenue DESC;

GO


------------------------------------------------------------
-- 3. Overspending Analysis by Expense Category
------------------------------------------------------------
SELECT
    Category,
    SUM(Budgeted_Expense) AS Budget,
    SUM(Actual_Expense) AS Actual,
    SUM(Actual_Expense) - SUM(Budgeted_Expense) AS Overspend
FROM dbo.Expense_Items_Sheet
GROUP BY Category
ORDER BY Overspend DESC;
GO


------------------------------------------------------------
-- 4. Income Budget vs Actual Variance by Month
------------------------------------------------------------
SELECT
    Month,
    SUM(Budgeted_Income) AS Budget,
    SUM(Actual_Income) AS Actual,
    SUM(Actual_Income) - SUM(Budgeted_Income) AS Variance
FROM dbo.Income_Items_Sheet
GROUP BY Month
ORDER BY Month;
GO


------------------------------------------------------------
-- 5. City-Level Profitability Analysis
------------------------------------------------------------
WITH Rev AS (
    SELECT City, SUM(Actual_Income) AS Revenue
    FROM dbo.Income_Items_Sheet
    GROUP BY City
),
Exp AS (
    SELECT City, SUM(Actual_Expense) AS Expense
    FROM dbo.Expense_Items_Sheet
    GROUP BY City
)
SELECT
    Rev.City,
    Rev.Revenue,
    Exp.Expense,
    (Rev.Revenue - Exp.Expense) AS Profit
FROM Rev
JOIN Exp ON Rev.City = Exp.City
ORDER BY Profit DESC;
GO
