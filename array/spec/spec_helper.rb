require 'kitchen'
require 'pry'

Dir["./lib/*.rb"].each { |file| require file }