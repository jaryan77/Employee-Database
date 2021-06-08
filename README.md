# Employee Database: A Mystery in Two Parts

A database query project on employee data of a fictitious company. Using the provided data, I create a data model including an ERD diagram and table schema that includes specific data types, primary keys, foreign keys, and other constraints. Data collected from CSVs is then loaded to the SQL database to perform a data analysis.

## Background

It is a beautiful spring day, and it is two weeks since you have been hired as a new data engineer at Pewlett Hackard. Your first major task is a research project on employees of the corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.

In this project, I performed Data Modeling, Data Engineering, and Data Analysis

#### Data Modeling

* First, inspect the CSVs and sketch out an ERD of the tables.

* I chose to use the following free tool: [http://www.quickdatabasediagrams.com](http://www.quickdatabasediagrams.com).

#### Data Engineering

* Using the information I have to create a table schema for each of the six CSV files. I specified data types, primary keys, foreign keys, and other constraints.

* The next step was to import each CSV file into the corresponding SQL table. I was sure to import the data in the same order that the tables were created and account for the headers when importing to avoid errors.

#### Data Analysis

Once I had a complete database, I was tasked to do the following:

1. List the following details of each employee: employee number, last name, first name, sex, and salary.

2. List first name, last name, and hire date for employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.


