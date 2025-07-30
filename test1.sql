SELECT
    ps.PatientId
    , ps.AdmittedDate
    , h.HospitalType
    , h.HospitalSize
FROM
    PatientStay ps
JOIN DimHospital h ON
    ps.Hospital = h.Hospital;