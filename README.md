
Assignment #6: Nutritionix API

Use nutrionix API to allow the user to estimate how many calories a food item is. They enter a food - for example, nachos. Save user entries to the database and display them in a list view along with caloric estimate, along with the datetime they ate the meal.

https://www.nutritionix.com/
https://docs.google.com/document/d/1_q-K-ObMTZvO0qUEAxROrN3bwMujwAN25sLHwJzliK0/edit#heading=h.tuysn8fgm3g5
https://www.snsavage.com/blog/2017/creating-carb-tracker-with-ruby-on-rails.html

https://campushippo.com/lessons/an-easy-way-to-show-nutrition-facts-in-your-rails-app-9555b9d

Learning Goals:
Create a table in your database for meal.
In the controller method, make a call to the Nutrionix API and then save the result to that row in the database

So the user puts in "nachos"

In the controller method, before saving "nachos", make a call to Nutrionix and get "650 calories" (or whatever it returns). Save that to the same row. Should be as simple as 

@meal.calories = response.data.calories (or something like that)

Use a POST request with a custom form to make requests to an external API
Signing up and using API keys for an external resource

Add custom headers with API key to your HTTP request to authenticate it:

https://stackoverflow.com/questions/24691483/passing-headers-and-query-params-in-httparty

Required HEADERS when accessing Nutritionix V2 API endpoints:
x-app-id: Your app ID issued from developer.nutritionix.com)
x-app-key: Your app key issued from developer.nutritionix.com)
x-remote-user-id:  A unique identifier to represent the end-user who is accessing the Nutritionix API.  If in development mode, set this to 0.  This is used for billing purposes to determine the number of active users your app has.


Assignment #7: Users with devise gem 

Install the gem 'devise' into your rails application. Add a logged-in user to the nutrition api you just made. Only display the meals/caloric values for the currently logged in user. 

https://github.com/heartcombo/devise

Learning Goals
https://guides.railsgirls.com/devise

Use devise's built-in login page
Connect that with your application

So you should have a has_many belongs_to with user.meals and meal.user.

Then, display only the current user's meals.

Devise has a useful method current_user that returns the current user. So you should be able to just put current_user.meals in your view.

