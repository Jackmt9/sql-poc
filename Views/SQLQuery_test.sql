GO
CREATE OR ALTER VIEW TaxiViewTEST
AS SELECT
    *
FROM
    OPENROWSET(
        BULK 'NYCTripSmall.parquet',
        DATA_SOURCE = 'SynapseCDatalake',
        FORMAT = 'PARQUET'
    ) AS [result] 
