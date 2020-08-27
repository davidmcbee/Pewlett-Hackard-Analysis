# Pewlett-Hackard-Analysis
## Background and purpose
##  Background
Pewlett Hackard is a large company, 300,024 employees, in which a large portion, 90,398, of those current employees are in the age group of 65 to 68. Based on this,
 it is important to prepare for the upcoming anticipated retirement of up to 30 percent of Pewlett Harkard's employees.
due to this situation Pewlett Hackard preparing in three ways:
1. Pewlett Hackard is offering a retirement package for those meeting certain criteria.
### Purpose
The 2nd and 3rd way that Pewlett Hackard is preparing, and the purpose of this analysis, is to understand the details; impact by
 numbers and titles for example, in order to implement the correct recruiting and training to address this issue. The 3rd
way is to implement a mentorship program. Pewlett Hackard is implementing a mentorship program to groom replacements from current employees.
This analysis provides some fundamental information to support this.

## Overview of Analysis
### Questions to Answer
Initial analysis was conducted to answer who will be retiring and how may positions will Pewlett Hackard need to fill?

This analysis, follow on analysis, was then conducted to answer these two questions?
3. What is the number of retiring employees by title?
4. Who is eligible to participate in the mentorship program?

### Information Source
The source information that was used is currently available in the form of 6 csv files here,
![](https://github.com/davidmcbee/Pewlett-Hackard-Analysis/blob/master/PewLett-Hakard-Analysis/Data/source_files.png')

Additionally, conducting this analysis presented the opportunity to implement a database. By doing this Pewlett Hackard will modernize its human resource enterprise
resource functionality and apply data quality standards that will promote trust in the data, enable reusability and provide transparency.

### Environment and How Analysis was Conducted
A PostgreSQL database was installed, Postgres version 11.9. This installation includes pgAdmin. pgAdmin is the window into our database: it's where
 queries are written and executed and where results are viewed. Postgres holds the files, pgAdmin provides the access. All SQL actions take place within these two programs.

### Analysis Steps Conducted
1. I started an initial Exploratory data Analysis (EDA) to understand the data; number of rows, columns, data types, possible joins, etc. As part of EDA, I developed an
Entity Relationship Diagram (ERD), technically, a physical ERD. This was used as a design for the database. It laid out the tables, attributes, data types and relationships
between the tables. See here.
![]('https://github.com/davidmcbee/Pewlett-Hackard-Analysis/blob/master/PewLett-Hakard-Analysis/Data/ERD.png')


2.I created a query to obtain retiring employees by title. This also included a query to make sure this was a unique list.

3. I create a query to obtain who is eligible to be a mentor. The criteria for this is those born between 01/01/1965 and 12/31/1965.Four csv files were created to log each step.
These files are shown in Table 2. ![]('https://github.com/davidmcbee/Pewlett-Hackard-Analysis/blob/master/PewLett-Hakard-Analysis/Data/saved_analysis_files.png)
Those actual files are available here. ('https://github.com/davidmcbee/Pewlett-Hackard-Analysis/tree/master/PewLett-Hakard-Analysis/Data')

## Results
The answer came from 4 files, shown here
![](https://github.com/davidmcbee/Pewlett-Hackard-Analysis/blob/master/PewLett-Hakard-Analysis/Data/saved_analysis_files.png)
and available here ('https://github.com/davidmcbee/Pewlett-Hackard-Analysis/tree/master/PewLett-Hakard-Analysis/Data')

The answered questions are:
1. What is the number of retiring employees by title?

1a. The unique_titles file lists the count of those retiring by title. That count is 90,398.
 
1b. Note that this is a significant number of people across many skill sets. This can be seen in the retiring_titles file, ![]('https://github.com/davidmcbee/Pewlett-Hackard-Analysis/blob/master/PewLett-Hakard-Analysis/Data/retiring_emp.csv') and is shown here.
![](retiring titles)

1c. Also note that the two largest categories are senior engineers and senior staff.

1d. There are only 2 managers retiring

2. Who is eligible to participate in the mentorship program?

2a. The Mentorship_eligibility file shows that there are 1,549 employees that are eligible to be mentors. See the file here ('https://github.com/davidmcbee/Pewlett-Hackard-Analysis/tree/master/PewLett-Hakard-Analysis/Data')

2b. The ratio of people anticipated to retire versus the number of mentors results in a ration of 1 to 58 people.
 
2c. Regarding the ability of mentors to help, if we focus this on the two largest retiring skill sets, senor engineers and senior staff, there are 268 Senior Engineer mentors and 425 Senior staff mentors.
 
## Summary

There are 90,398 roles that will need to be filled. The mentorship program will help in a couple ways.
Promoting from within helps with continuity and will especially help with the more senior roles due to bringing some existing experience. Since there are far to many roles
to fill strictly from the mentorship program, promoting existing employees up into those senior roles leaves open slots of more junior roles. Those more junior roles are more
easily filled from external recruiting.
One other point is that out of those 1,549 mentors it is assumed a good portion of those will fall into the mentee column as potential promotes.
Even with a robust mentorship program an intensive recruiting effort is needed.

### Flawed Analysis
BUT, and its a big but, I think the above analysis is flawed. I presented it as is to comply with, and match with, the reference examples in the challenge instructions.
The reason I think it is flawed is that it did not account for two items:
* the initial query, that produced ret_titles did not account for hire date. The queston whether ot include the hire date or not is determined by whether the retirement package wants to limet the package to those born between 1952 and 1955 and hired between 1985 and 1988 or not differentiate for when those people were hired. A valid hire date is important. It is the case that a number of workers are older but started later then 1985. It is unclear but doubtful if all of those people even desire to retire. Both options are presented below.

* The initial query did not filter for active employees; those with a to_date of 999-01-01. Without this we are counting no longer active employees.

#### Corrections With Hire Date
Looking at these redone files shown here
![](https://github.com/davidmcbee/Pewlett-Hackard-Analysis/blob/master/PewLett-Hakard-Analysis/Data/redone%20files_with_hire_date.png)

If you take a look at ret_titles1 after this filtering one gets 33,118 value rows. This is the number of people that are in this soon to retire group. Further,
the unique_titles1 file is no longer needed as it is now already unique. The number of rows in the unique_titles1 file is 33,118. This is the same as the ret_titles1 file.
Note that the original unique_titles file had 90,398 value rows.
This leads us to the retiring_titles1 file, shown here.
![](https://github.com/davidmcbee/Pewlett-Hackard-Analysis/blob/master/PewLett-Hakard-Analysis/Data/retiring_titles1.png)

The redo of the retiring_titles file. The original retiring_titles file counts summed to 90,388, while the retiring_titles1 file sums to,
you guessed it, 33,118. I believe this is the correct number.

Regarding the mentorship_eligibility file. This is not changed and the number of mentors still stands at 1549. 

This modifies and mitigates the conclusions but 33,118 is still a large number of retiree's to replace . It brings the ratio of mentors to retiree's down from 58 to 1 to 21.3 to 1.
All the benefits of a mentorship program, stated earlier, sill hold but, at 21.3 to 1 a large recruiting effort will still be needed 


#### Corrections without Hire Date
Looking at these redone files shown here
![](https://github.com/davidmcbee/Pewlett-Hackard-Analysis/blob/master/PewLett-Hakard-Analysis/Data/redone%20files_without_hire_date.png)
If you take a look at ret_titles2 after this filtering one gets 72,458 value rows. This is the number of people that are in this soon to retire group. Further,
the unique_titles2 file is no longer needed as it is now already unique. The number of rows in the unique_titles2 file is 72,458 value rows. This is the same as the ret_titles2 file.
Note that the original unique_titles file had 90,398  and the unique_titles1 file had 33,118 value rows.
This leads us to the retiring_titles2 file, shown here.
![](https://github.com/davidmcbee/Pewlett-Hackard-Analysis/blob/master/PewLett-Hakard-Analysis/Data/retiring_titles2.png)

The redo of the retiring_titles file. The original retiring_titles file counts summed to 90,388. The retiring_titles1 file sums to 33,118 and the retiring_titles2 file sums to 72,458..

Regarding the mentorship_eligibility file. This is not changed and the number of mentors still stands at 1549. 

This modifies and mitigates the conclusions but 72,458 is still a large number of retiree's to replace . It brings the ratio of mentors to retiree's to 47 to 1.

All the benefits of a mentorship program, stated earlier, sill hold but, at 47 to 1 a large recruiting effort will still be needed 





