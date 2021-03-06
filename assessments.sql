SELECT paf.[PTNT_ASES_DK]
      ,paf.[ASSESSMENT_COMPLETION_STS]
      ,paf.[COMPLETION_DATE] as 'ASES_DT'
      ,paf.[ASES_NM]
      ,paf.[ASES_SCOR]
      ,paf.[ASES_SGND_USR_NM]
      ,paf.[TNT_MKT_BK]
      ,pd.[EMPI]
      ,pd.[MRN]
FROM [CIM_RPT].[dbo].[PTNT_ASES_FCT] paf
JOIN [CIM_RPT].[dbo].[PTNT_DIM] pd ON pd.[PTNT_DK] = paf.[PTNT_DK]
WHERE paf.[COMPLETION_DATE] > '2018-04-01'
AND paf.ASSESSMENT_COMPLETION_STS = 'Y'
AND paf.TNT_MKT_BK = 'CA'
GROUP BY paf.[PTNT_ASES_DK]
        ,paf.[ASSESSMENT_COMPLETION_STS]
        ,paf.[COMPLETION_DATE]
        ,paf.[ASES_NM]
        ,paf.[ASES_DT]
        ,paf.[ASES_SCOR]
        ,paf.[ASES_SGND_USR_NM]
        ,paf.[TNT_MKT_BK]
        ,pd.[EMPI]
        ,pd.[MRN]