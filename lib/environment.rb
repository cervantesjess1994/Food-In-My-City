require_relative "FoodInMyCity/version"
require_relative "FoodInMyCity/cli"
require_relative "FoodInMyCity/api"

require "pry"
require "httparty"

module FoodInMyCity
  class Error < StandardError; end
  # Your code goes here...
end
