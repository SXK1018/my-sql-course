SELECT
    h.Hospital AS HospitalFromLookup
    ,ps.Hospital AS HospitalOfThePatient
    ,h.HospitalType
    ,ps.PatientId
    ,ps.AdmittedDate
    ,ps.DischargeDate
    ,DATEDIFF(DAY,ps.AdmittedDate, ps.DischargeDate) AS DaysInHospital
FROM
    DimHospitalBad h LEFT JOIN PatientStay ps ON ps.Hospital = h.Hospital

SELECT
    h.Hospital AS Hospital
    ,h.HospitalType
    ,COUNT(ps.PatientId) AS NumberOfPatients
FROM
    DimHospitalBad h
    LEFT JOIN PatientStay ps ON ps.Hospital = h.Hospital
WHERE
    ps.Ward LIKE '%surgery%'
GROUP BY
    h.Hospital,
    h.HospitalType