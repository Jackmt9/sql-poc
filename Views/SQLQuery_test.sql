CREATE VIEW TaxiView6
AS SELECT
    *
FROM
    OPENROWSET(
        BULK 'NYCTripSmall.parquet',
        DATA_SOURCE = 'SynapseCDatalake',
        FORMAT = 'PARQUET'
    ) AS [result] 
