
####################################################################################################################################
#
# This is similar to web.xml. It defines the handlers and config for the 'servlet'.
#
####################################################################################################################################

require 'sinatra'

set :port, 8080
set :static, true
set :public_folder, "static"
set :views, "views"

get '/' do
	return 'Hello World!'
end

#####################################################################################################################################
#
# This was the original handler until forms were introduced in the exercises.
#
#get '/hello/' do
#	greeting = params[ :greeting] || "Hi There"                     # if greeting param present in HTML, it gets populated whenever
#	name = params[ :name] || "Whoever you are"                      # we pass $greeting, using the params hashmap, or a default is used.
#	erb :index, :locals => {'greeting'=>greeting, 'name'=>name}     # .erb is the view file extension. Locals just meanss local vars.
	                                                                # erb here is a method call, remember Ruby lets you leave out the
							                # parenthesis, erb is used to render the index view, which is a 
							                # template in this case, which Sinatra dynamically fills in with
							                # the values provided from here.
#end
######################################################################################################################################

######################################################################################################################################
#
# This is the form version.
#
get '/hello/' do
	erb :hello_form
end

post '/hello/' do
	greeting = params[ :greeting] || "Hi There"
	name = params[ :name] || "Whoever you are"
	erb :index, :locals => {'greeting'=>greeting, 'name'=>name}
end
#######################################################################################################################################
