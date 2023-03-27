CREATE OR ALTER VIEW test5
AS SELECT
    *
FROM
    OPENROWSET(
        BULK 'NYCTripSmall.parquet',
        DATA_SOURCE = 'SynapseCDatalake',
        FORMAT = 'PARQUET'
    ) AS [result] 

GO

CREATE OR ALTER VIEW tttt
AS SELECT
    *
FROM
    OPENROWSET(
        BULK 'NYCTripSmall.parquet',
        DATA_SOURCE = 'SynapseCDatalake',
        FORMAT = 'PARQUET'
    ) AS [result] 
