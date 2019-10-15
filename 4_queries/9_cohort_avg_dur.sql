SELECT AVG(total_duration)
  FROM (SELECT SUM(completed_at - started_at) AS total_duration
    FROM assistance_requests
    JOIN students ON students.id = student_id
    JOIN cohorts ON cohorts.id = cohort_id
    GROUP BY cohorts.id) as cohorts_durations