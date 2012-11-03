# Rails Star Rating

A simple gem to add star rating to a resource.

## Installation:

Add the following line to Gemfile

	gem "star_rating", git: "git@github.com:deepakkumarnd/star_rating.git"

Now run bundle command and run the following command to install star_rating to your application.

	rails g star_rating:install

this will copy the javascript/css and the rating partial to the appropriate location.

## Usage:

now add a field named 'rating' to your model. Suppose you have a model Book ,Book should have a field named 'rating'

next add an action rate to the controller where you want the rating to be submitted to and add the routes to routes.rb as below.

	routes.rb

		resources :books do 
			member do
				put 'rate'
			end
		end

you can write your own code to manipulate the user rating in the rate action and finally store the star_rating processed value of rating.

Last step is to add the following line to the view file wherever you want the rating should be displayed.

	render partial: "shared/rating", locals: { object: book, submit_path: rate_book_path(book) }


That's it now you have done with the setup.
