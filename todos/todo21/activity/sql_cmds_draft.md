CREATE TABLE dogs(
	dog_id INTEGER PRIMARY KEY AUTO_INCREMENT,
	color TEXT,
	dog_name TEXT
);

   DELETE FROM table-name
     WHERE search-condition ...
For example, suppose department D11 was moved to another place. You want to delete each row in the CORPDATA.EMPLOYEE table with a WORKDEPT value of D11 as follows:

   DELETE FROM CORPDATA.EMPLOYEE
     WHERE WORKDEPT = 'D11'