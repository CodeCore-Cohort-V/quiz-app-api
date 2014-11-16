Welcome dev team!
=======================

Quiz-app, as it can be called until it gets its own tidy original name, is a combination web app and json API for interfacing with a mobile client of the same name. This repo contains the source code for the rails app and the web interface for creating and updating content. The mobile client contains its own views, only receiving content from and posting small updates to the API. Further details for the mobile client can be found in [it's own repo](https://github.com/CodeCore-Cohort-V/phonegap).

Dev team see the [wiki](https://github.com/CodeCore-Cohort-V/quiz-app-api/wiki/Main-Wiki) for more info.


User Authentication
---------------------

Vanilla user authentication is implemented with convenience methods that replicate those of the devise gem. Definitions live in the application controller

`#sign_in(user)`

Signs in a user by setting the session id. Expects a user object. Returns the id.

---

`#user_signed_in?`

Returns boolean. Helper method available in view.

---

`#authenticate_user!`

Redirects to new_session_path with flash message if user is not signed in. Users `#user_signed_in?`

---

`#current_user`

Finds a user from the db with the session user_id. Helper method available in views.

---


API Routes
================

---
`/api/topics`


`topics#index`

Index all topics

---
`/api/topics/:id`


`topics#show`

Index all bundles where topic_id is topic name. 

---
`/api/queuers/:bundle_id?:user_id`    POST

`queuers#create`

Creates a new queue instance with bundle id and user id. Returns {saved: boolean}

---
`/api/queuers`

`queuers#index`

Lists all bundles in user's queue, listed by desc created at date of queuer. Sends only bundles, not nested resources

---
`/api/attempts/:choice_id?:user_id` POST

`attempts#create`

Creates a new attempt in db. Returns {saved: boolean}

---

`/api/bundles/:id`

`bundle#show`

Return bundle with nested questions and nested choices

