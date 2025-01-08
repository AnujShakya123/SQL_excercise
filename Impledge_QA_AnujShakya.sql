1.) Select the details of doctors who have got admissions:
SELECT DISTINCT d.*
FROM Doctors d
JOIN Admissions a ON d.doctor_id = a.attending_doctor_id;


2.) Select the details of doctors who have no admissions:
SELECT *
FROM doctors d
WHERE d.doctor_id NOT IN (SELECT DISTINCT attending_doctor_id FROM admissions);


3.) Select the details of patients whose admission cannot be completed due to missing doctor details:
SELECT p.*
FROM patients p
JOIN admissions a ON p.patient_id = a.patient_id
WHERE a.attending_doctor_id NOT IN (SELECT doctor_id FROM doctors);
