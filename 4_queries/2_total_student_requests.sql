SELECT count(*), students.name FROM assistance_requests
   JOIN students ON student_id = students.id
   GROUP BY students.id
   HAVING students.name = 'Elliot Dickinson';