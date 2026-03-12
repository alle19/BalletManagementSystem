A relational database for managing ballet performances, dancers, and ticket sales. Focuses on data integrity, performance optimization and automation,

- Schema: 8 tables with 1:N and M:N relationships (Composite Keys).
- Complex Queries: Uses CTEs and aggregations to calculate sales and "Sold-Out" status.
- Optimization: Non-clustered indexes on Foreign Keys and search columns for faster JOINs.
- Triggers: trg_PreventOverbooking – prevents sales beyond venue capacity.

Database Engine: SQL Server (T-SQL)
Management Tool: Azure Data Studio
