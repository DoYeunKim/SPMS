# SPMS (Story Pitch Management System)

## Project Description

SPMS, or Story Pitch Management System, is a full-stack web application that allows authors to submit story pitches to a publishing company. The pitch can then be approved or rejected by editors at various levels and in various committees based on genre and story length before the author is able to submit a draft of the story. The authors are able to track the status of their pitches throughout the process.

## Technologies Used

### Backend
* Java8
* Javalin
* PostgreSQL
* JDBC
* Hibernate
* DBeaver
* Maven

### Frontend
* HTML
* JavaScript
* CSS

### Testing
* JUnit
* Mockito
* Postman

## Features

List of features ready
* User can register and log in/out
* Author-type user can submit their pitches, which are automatically moved along the pipeline based on available points and editor approval
* Author-type user can include additional files for their pitches
* Author-type user can view the status of their submitted pitches
* Editor-type user can view pitches that are allowed for their access level and genre
* Editor-type user can submit requests to authors or editors based on their access level
* User can view requests sent and received

To-do list:
* Resolve parsing and updating Java's LocalDateTime 
* Implement all features that require the ability to update the pitches
* Implement the ability to answer requests (has to do with LocalDateTime problem)
* Implement logic for draft feature
* Add routing from localhost:8080 to localhost:8080/html for facilitated access

## Getting Started

### git
git clone https://github.com/DoYeunKim/SPMS.git

### DB setup
For your PostgreSQL 13 DB, use the following SQL files included in the repo:
1. spms_DDL.sql to set up the tables
2. spms_DML.sql to populate necessary columns for the application to work

### Running the project
1. Using Eclipse or other IDEs that support Java 8, build the project using Maven.
2. Open and run SpmsAppJavalin.java file located in com.revature.app package.

## Usage
* Access the front-end of the web application by opening localhost:8080/html on a web browser.
* Give it a go!
