require 'rubygems'
require 'compass' #must be loaded before sinatra
require 'sinatra'
require 'sinatra/content_for'
require 'erb'    #must be loaded after sinatra
require './database/models'

# set sinatra's variables
set :app_file, __FILE__
set :root, File.dirname(__FILE__)
set :views, "views"
set :public, 'static'

configure do
  Compass.add_project_configuration(File.join(Sinatra::Application.root, 'config', 'compass.config'))
end

# at a minimum, the main sass file must reside within the ./views directory. here, we create a ./views/stylesheets directory where all of the sass files can safely reside.
get '/stylesheets/:name.css' do
  content_type 'text/css', :charset => 'utf-8'
  scss(:"stylesheets/#{params[:name]}", Compass.sass_engine_options )
end

get '/' do
  erb :index
end

get '/snippets' do
  @snippets = Snippet.order("created_at DESC")
  erb :"snippets/show"
end
