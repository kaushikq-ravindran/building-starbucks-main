Agile Brews: Building Starbucks - A Project Showcase

Project Decisions:

Project is built using MVC design pattern. 

Used Spring Boot Maven to get an executable WAR file. 

Created web UI to display work flow. 

Deployed on Cloud using ElasticBeanStalk, Auto Scale Group and Ro. 

Implemented REST APIs 
<br /><br /
## Architecture Diagram
![Arch](/images/arch.PNG)


<br /><br /><br />
## Component Diagram
![Component](/images/ComponentDiagram.png)


<br /><br /><br />
## AWS Deployment Diagram
![AWS Deployment](/images/AWSDeploymentDiag.PNG)
<br /><br /><br />

## Cloud Deployment

Deployed on AWS Cloud using EBS. 

Enabled Auto Scaling up to 3 instances and used ELB for load balancing. 

Added Alerts for status updates.

<br /><br />
## Feature Set

New user can create new account using “Join Now”. New record is created is created in RDS. If username is already present in database, then join now is restricted.  

Valid users who are authenticated using username and password can login. 

User can add a credit/debit card using add card. 

By using orders, user can place his order in Starbucks. 

Payment for the order can be done through payments. 

User can log out of application using Sign Out.

<br /><br />
## Steps to run project 

Download code form GitHub 

Import it as a maven project. 

Update AWS keys 

Maven clean and update project to run.
