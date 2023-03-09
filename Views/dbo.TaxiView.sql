SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE OR ALTER VIEW [dbo].[TaxiView] 
AS SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://jackacct1.dfs.core.windows.net/filesys1/NYCTripSmall.parquet',
        FORMAT = 'PARQUET'
    ) AS [result]
GO
