# Perfect JSON API Example

[![Perfect logo](http://www.perfect.org/github/Perfect_GH_header_854.jpg)](http://perfect.org/get-involved.html)

[![Perfect logo](http://www.perfect.org/github/Perfect_GH_button_1_Star.jpg)](https://github.com/PerfectlySoft/Perfect)
[![Perfect logo](http://www.perfect.org/github/Perfect_GH_button_2_Git.jpg)](https://gitter.im/PerfectlySoft/Perfect)
[![Perfect logo](http://www.perfect.org/github/Perfect_GH_button_3_twit.jpg)](https://twitter.com/perfectlysoft)
[![Perfect logo](http://www.perfect.org/github/Perfect_GH_button_4_slack.jpg)](http://perfect.ly)


[![Swift 3.0](https://img.shields.io/badge/Swift-3.0-orange.svg?style=flat)](https://developer.apple.com/swift/)
[![Platforms OS X | Linux](https://img.shields.io/badge/Platforms-OS%20X%20%7C%20Linux%20-lightgray.svg?style=flat)](https://developer.apple.com/swift/)
[![License Apache](https://img.shields.io/badge/License-Apache-lightgrey.svg?style=flat)](http://perfect.org/licensing.html)
[![Twitter](https://img.shields.io/badge/Twitter-@PerfectlySoft-blue.svg?style=flat)](http://twitter.com/PerfectlySoft)
[![Join the chat at https://gitter.im/PerfectlySoft/Perfect](https://img.shields.io/badge/Gitter-Join%20Chat-brightgreen.svg)](https://gitter.im/PerfectlySoft/Perfect?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
[![Slack Status](http://perfect.ly/badge.svg)](http://perfect.ly) [![GitHub version](https://badge.fury.io/gh/PerfectlySoft%2FPerfect-CURL.svg)](https://badge.fury.io/gh/PerfectlySoft%2FPerfect-CURL)

An Example JSON API for Perfect

This package builds with Swift Package Manager and is part of the [Perfect](https://github.com/PerfectlySoft/Perfect) project.

Ensure you have installed Xcode 8.0 or later.

## Setup - Xcode 8

* Check out or download the project;
* In terminal, navigate to the directory and execute

```
swift package generate-xcodeproj
```

* Open `Perfect-JSON-API.xcodeproj`
* Add to the "Library Search Paths" in "Project Settings" `$(PROJECT_DIR)`, recursive. **(This step will be unneeded in a future release of Xcode 8.)**
* Select the Executable build target from the build targets dropdown in Xcode
* Run (cmd-R) to build & run in Xcode.

In Xcode's console output pane you will see:

```
[INFO] Starting HTTP server on 0.0.0.0:8181 with document root ./webroot
```

* In a browser, visit [http://localhost:8181/api/v1/people](http://localhost:8181/api/v1/people)

## Setup - Terminal

* Check out or download the project;
* In terminal, navigate to the directory 
* Execute `swift build`
* Once the project has compiled, execute `./.build/debug/Perfect-JSON-API`

The output you will see:

```
[INFO] Starting HTTP server on 0.0.0.0:8181 with document root ./webroot
```

* In a browser, visit [http://localhost:8181/api/v1/people](http://localhost:8181/api/v1/people)

## Included Routes

The following routes are included in this API for demonstration purposes:

* GET: [http://localhost:8181/](http://localhost:8181/) - A demonstration HTML "Hello, world!" page is returned.
* GET: [http://localhost:8181/api/v1/people](http://localhost:8181/api/v1/people) - Returns a JSON list of persons from the included mock data.
* POST: [http://localhost:8181/api/v1/people](http://localhost:8181/api/v1/people) - Adds a person to the internal mock object and returns the new array as JSON. Note the following POST params are expected: `firstName`, `lastName`, `email`.
* POST: [http://localhost:8181/api/v1/people/json](http://localhost:8181/api/v1/people/json) - Accepts a raw body of JSON. Adds a new person, returns the new list. JSON would be in the following format:

``` javascript
{
    "email": "test@example.com",
    "firstName": "Test",
    "lastName": "User"
}
```

## Postman Collection

The repo includes a file `Example-PeopleAPI.postman_collection` which is a Postman URL collection.

With Postman installed, import and use to easily query the routes.

## Issues

We are transitioning to using JIRA for all bugs and support related issues, therefore the GitHub issues has been disabled.

If you find a mistake, bug, or any other helpful suggestion you'd like to make on the docs please head over to [http://jira.perfect.org:8080/servicedesk/customer/portal/1](http://jira.perfect.org:8080/servicedesk/customer/portal/1) and raise it.

A comprehensive list of open issues can be found at [http://jira.perfect.org:8080/projects/ISS/issues](http://jira.perfect.org:8080/projects/ISS/issues)


## Further Information
For more information on the Perfect project, please visit [perfect.org](http://perfect.org).
