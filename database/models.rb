require 'rubygems'
require 'active_record'
require 'yaml'

dbconfig = YAML::load(File.open('database.yml'))
ActiveRecord::Base.establish_connection(dbconfig)

class Post < ActiveRecord::Base

end

class Snippet < ActiveRecord::Base

end

