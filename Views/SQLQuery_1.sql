CREATE VIEW TaxiView5
AS SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://jackacct1.dfs.core.windows.net/filesys1/NYCTripSmall.parquet',
        FORMAT = 'PARQUET'
    ) AS [result] 
