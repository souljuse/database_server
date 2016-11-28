require 'rubygems'
require File.join(File.dirname(__FILE__), 'app/app.rb')

Rack::Handler.default.run(app, :Port => 4000)
run App
