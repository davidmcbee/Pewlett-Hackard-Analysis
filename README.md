# Pewlett-Hackard-Analysis
## Background and purpose
##  Background
Pewlett Hackard is a large company, 300,024 employees, in which a large portion, 90,398, of those current employees are in the age group of 65 to 68. Based on this,
 it is important to prepare for the upcoming anticipated retirement of up to 30 percent of Pewlett Harkard's employees.
due to this situation Pewlett Hackard preparing in three ways:
1. Pewlett Hackard is offering a retirement package for those meeting certain criteria.
### Purpose
The 2nd and 3rd way that Pewlett Hackard is preparing, and the purpose of this analysis, is to understand the details; impact by
 numbers and departments for example, in order to implement the correct recruiting and training to address this issue. The 3rd
way is to implement a mentorship program. Pewlett Hackard is implementing a mentership program to groom replacemnts from current employees.
This analysis provides some fundemental information to support this.

## Overview of Analysis
### Questions to Answer
Initial analysis was conducted to answer Who will be retiring and how may positions will Pewlett Hackard need to fill?

This analysis, follow on analysis, was then conducted to answer these two questons?
3. What is the number of retiring employees by title?
4. Who is elibible to participate in the mentorship program?

### Information Source
The information that is currently available is in the form of 6 csv files,
![](https://github.com/davidmcbee/Pewlett-Hackard-Analysis/blob/master/PewLett-Hakard-Analysis/Data/source_files.png')

Additonally, conducting this analysis presents the opportunity to implent a database. By doing this Pewlett Hackard will modernize its human resource enterprise
resource functionality and apply data quality standards that will promote trust in the data, enable reusability and provide transparancy.

### Environment and How Analysis was Conducted
A PostgreSQL database was installed, Postgres version 11.9. This installation includes pgAdmin. pg Admin is the window into our database: it's where
 queries are written and executed and where results are viewed. Postgres holds the files, pgAdmin provides the access. All SQL actions take place within these two programs.

### Analysis Steps Conducted
1.I created a query to obtain retiring employees by title. This also included a query to make sure this was a unique list and is the current title since an employee could of had numerous titles.

2. I create a query to obtain who is eligible to be a mentor. The criteria for this is those born between 01/01/1965 and 12/31/1965 and are still current emplyees.
Four csv files were created to log each step. These files are shown in Table 2. ![]('https://github.com/davidmcbee/Pewlett-Hackard-Analysis/blob/master/PewLett-Hakard-Analysis/Data/saved_analysis_files.png)
Those actual files are available here. ('https://github.com/davidmcbee/Pewlett-Hackard-Analysis/tree/master/PewLett-Hakard-Analysis/Data')

## Results
The answer to the questions are:
1. What is the number of retiring employees by title?

1a. The unique_titles file lists the count of those retiring by title. That count is 90,398.
 
1b. Note that this is a significant number of people across many skill sets. This can be seen in the retiring_titles file, ('https://github.com/davidmcbee/Pewlett-Hackard-Analysis/blob/master/PewLett-Hakard-Analysis/Data/retiring_emp.csv') and is shown here.
![](retiring titles)

1c. Also note that the the two largest catagories are senior engineers and senior staff.

1d. There are only 2 managers retiring

2. Who is elibible to participate in the mentorship program?

2a. The Mentorship_eligibility file shows that there are 1,549 employees that are eligible to be mentors. See the file here (mentorship_eligibility.csv)

2b. The ratio of people anticipated to retire versus the number of mentors results in a ration of 1 to 58 people.
 
2c. If we focus this on the two largest skill sets retiring, senor engineers and senior staff, there are 268 Senior Engineer mentors and 425 Senior staff mentors.
 
## Summary

There are 90,398 roles that will need to be filled. The mentorsip program will help in a couple ways.
Promoting from within helps with continuity and will especicially help with the more senior roles due to bringing some exisitng experience. Since there are far to many roles
to fill strictly from the mentorship program, promoting existing employees up into those senior roles leaves open slots of more juinor roles. Those more juinor roles are more
easily filled from external recruiting. You can view the total numbers by department in the retiring_emp file, (retiring_emp file.csv). Shown hear ![](retiring_by_deptmartment)
One other point is that out of those 1,549 mentors it is assumed a good portion of those will fall into the mentee column as potential promotees.
Even with a robust mentorship program an intensive recruiting effort is needed.

### Notes and Questions
* The retirement_titles file is an intermediate product and some employees are listed more then once.

In the challange section why didn't we include those hired between 01/01/1985 and 12/31/1988? I followed the challenge instructions but this was not included in those instructions. This introduces the possibility of an older but newer hire being included.






