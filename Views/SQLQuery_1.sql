CREATE VIEW TaxiView6
AS SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://jackacct4.dfs.core.windows.net/filesys1/NYCTripSmall.parquet',
        FORMAT = 'PARQUET'
    ) AS [result] 
