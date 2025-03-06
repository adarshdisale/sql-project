SELECT employeedetails.firstname, 
       employeedetails.lastname, 
       employeeskills.skill, 
       departments.departmentname
FROM employeedetails
INNER JOIN employeeskills ON employeedetails.employeeid = employeeskills.employeeid
LEFT JOIN employeedepartments ON employeeskills.employeeid = employeedepartments.employeeid
LEFT JOIN departments ON employeedepartments.departmentid = departments.departmentid;
