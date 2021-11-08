Issue 1: (Himaja Parachuri)
After cloning repo issues occured with database and list page.<br>
Solution: (Chandra Bhanu Tata)<br>
Update database manually through package manager

Issue 2: (Hema Sree Rathnam Machha)
After cloning repo packages were not installed automatically. Manual commands are not working. <br>
Soultion: (Syed Abdul Suboor)<br>
Update the packages to the latest version and try again<br>


Issue 3: (Syed Abdul Suboor)<br>
There is a issue with login authorization framework. Unable to run the query for authorization.Due to naming conventions of the Authorization name space a standard query will be generated with the route Accounts/Login. But in our project we were named our route Accounts/Login which caused the occurrence of Error 404 page not found.<br>
Solution: (Syed Abdul Suboor)<br>
We have changed the routing of files to Account/Login from Accounts/Login and changed the routing accordingly.
