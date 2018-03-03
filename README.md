# Monthly Newsletter

### A coding challenge to facilitate monthly email newsletter sign ups, listing newsletter recipients, and allowing to sort based on different table fields

## How to Run:
* Download and navigate to monthly_newsletter repository
* Run ```bundle install``` (to install dependencies)
* Run ```rails db:create``` (to create the database)
* Run ```rails db:migrate``` (to run the migrations)
* Run ```rails s``` (to start the server)
* Open a browser window to [localhost:3000](http://localhost:3000/) (to open the app)
* When you're ready to stop the server, just hit ```Ctrl + C```

## Schema
A bonus challenge to this assignment was to represent users and email addresses in separate tables to demonstrate a one-to-one relationship. Schema is pictured below: 
![schema design](https://user-images.githubusercontent.com/20649112/36929687-94e841c2-1e62-11e8-884e-56568ce946bf.png)

## Approach

### Form Validation
The challenge requested that there be front end JavaScript/jQuery validation to ensure that a user knew the form fields were required. However, this by itself is not an effective way to protect the database, as there are other ways to work around form input and there maybe other validations in place of the data (eg. validating uniqueness or format of email addresses). So this form includes a JavaScript alert to remind a user to enter the required fields as well as server-side validation error messages to provide more detail.

### Table Display
The table is displayed simply by iterating over each user in the database and displaying their first name, last name, email address, and the "sbuscribed since" date (using the created_at timestamp). By default they display in order of creation in descending order. Each of the column headers is clickable and will sort the data by that parameter- the first click will sort by ascending order, the second click will sort by descending order. 
Obviously in a real-world application, we wouldn't want to expose all of the users' information to anyone who clicks here. Instead this should be a protected route only accessible by administrators or users who need the email addresses. However, given the scope of this assignment, it does handle the requested tasks. 