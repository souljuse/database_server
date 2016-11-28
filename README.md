## Soul Database Server

#### Install & Start
1. Clone this repository
2. Run bundle
3. Run rackup -p 4000 app/app.rb

#### Use the Soul Database Server app
Visit http://localhost:4000/
In the homepage you will see all the values you stored in the session.

To set a new pair of values visit the page
http://localhost:4000/set?<desired_key>=<desired_value>
You will be redirected to the homepage where you can see the updated set of pairs

To select the pair associated with your <desired_key> go to
http://localhost:4000/get?key=<desired_key>
You will be redirected to the detail page
