SELECT
    ps.PatientId
    , ps.AdmittedDate
    , ps.Hospital
    , ps.Ward
    , ps.Tariff
FROM
    PatientStay ps
WHERE
    ps.AdmittedDate BETWEEN '2024-03-02' AND '2024-03-04'