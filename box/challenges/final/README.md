# Final Challenge

This challenge brings all things learned over the course of the SOA workshop together. It is your job to create multiple services that work together over the web.

## Intro

Your goal is to create a system that is used to track the inventory of a larger corporation. They run many offices in multiple locations and want to know how many pencils, staplers, computers, etc. they have in each of these locations.

As a good SOA developer your solution should come in 4 services:

* A user management system
* An item tracking system
* A system to manage the different locations
* A reporting system

We will run through all the different services one by one and all of them are stripped down to the bare minimum for this challenge. So no worries at all and lets get started!

## The Systems

All systems communicate with each other and the end user over HTTP. For this challenge no SSL/TLS is used. As in prior challenges user authentication happens via HTTP Basic Auth. Please see the User Management service description for more details.

### User Management

The user management in our example is a very basic authentication system with 3 hard coded users. There is no way to add, change or delete users at all.

The system provides a single HTTP endpoint:

**GET /user**

All requests to that endpoint must be made using HTTP Basic Auth to authenticate as one of these three users:

User  | Password
----- | -------------
wanda | partyhard2000
paul  | thepanther
anne  | flytothemoon

If the authentication succeeds, that is the HTTP Basic Auth combination of user name and password is correct, the endpoint returns a status code ``200``. In any other case (user not found, password incorrect) the endpoint returns HTTP status ``403``. The response body must always be empty.

The user management system is never used from an end-user. Instead services query it to check if the authentication they get from the end-user is valid. E.g. if a user wants to pull a report from the report system she is authenticating her request to the report system with HTTP Basic Auth. The report system then calls the ``/user`` endpoint of the user management system and only if that returns a ``200`` status code the report is created. If the user system would return a ``403`` the report system would not create a report and instead return a ``403`` status code as well.

### Location Management System


## Important Aside

During this challenge you create 4 services. Remember that while trying to resemble real life conditions these services are not meant to be ready for any *production* use. Your focus should therefore lie on the interaction between services, not making the services itself *pretty*, super stable or super performant.
