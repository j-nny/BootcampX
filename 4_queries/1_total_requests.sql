SELECT count(*) AS total_assistances, teachers.name FROM assistance_requests
  JOIN teachers ON teacher_id = teachers.id
  GROUP BY teachers.name
  HAVING name = 'Waylon Boehm';