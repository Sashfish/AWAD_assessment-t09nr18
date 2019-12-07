require 'open_weather'
require 'json'
class LivedataController < ApplicationController
def index
  options = { units: "metric", APPID: "007a8febcb07c3e92b42531c0b5be81a" }
  @request = OpenWeather::Current.city_id('2158177', options)
end
end
