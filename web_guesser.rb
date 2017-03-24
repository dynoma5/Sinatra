require 'sinatra'
require 'sinatra/reloader'

$number = rand(101)
def check_guess(guess)

	if guess >$number
		message = "Too high!"
	elsif guess < $number
		message = "Too low!"
	elsif guess == $number
		message = "You got it! The SECRET NUMBER is #{$number}!"
	end	
end	


get '/' do
	guess = params['guess'].to_i
	message = check_guess(guess)
	erb :index, :locals => {:message => message}

end	