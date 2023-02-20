# README

# _Hop Skip Drive Ride API_
### By Josey Kinnaman
### February, 2023

## Description
The primary goal of this exercise was to demonstrate how I think about testing, readability, and structuring a Rails application.

## Specifications:
- Create a Rails 7 application
- Entities:
  - Ride: Has an id, a start address, destination address, ride earning, commute duration, and ride duration.
  - Driver: Has an id and a home address.
- A RESTful API endpoint that returns a paginated JSON list of rides in descending score order for a given driver.
- API documentation for this endpoint in MarkDown
- Calculates the score of a ride in $ per hour as: (ride earnings) / (commute duration + ride duration). Higher is better.
- RSpec tests

 ***_Google Maps is expensive. Consider how you can reduce duplicate API calls_:***

  I did not get far enough to integrate this API. I used seeded data while building the API and this was sufficient for the ask of the prompt. I would consider caching the response in the future or saving frequently used locations to the database (like starting and destination addresses for the ride and the home address of the driver). It may actually be against the Google API though to save their information to the database so I would consider using the Geolocation API instead or as well.


## Setup//Install
 * Clone and open repository
  * `bundle install` to add dependencies
  * `rake db:setup` to create databases and migrations
  * `rake db:seed` to create mock data
  * `rails s` to run on local server
  * Access your `localhost:3000`

# API Documentation
This API uses a `GET` request. All responses come in standard JSON.

## GET
* `/drivers/:id/rides` returns rides for a given driver and their parameters. Will show the 1st page with 5 rides per page unless page # is specified.
  ```
  {"id":15,"start_address":"1214 Apple St","destination":"1214 Orange St","created_at":"2023-02-19T21:39:06.372Z","updated_at":"2023-02-19T21:39:06.372Z","driver_id":1,"ride_earnings":61.0,"commute_duration":789,"ride_duration":1097,"score":116.43690349946979}
  ```

* `/drivers/:id/rides?page=2` will return all rides for a particular driver and the page specified.







