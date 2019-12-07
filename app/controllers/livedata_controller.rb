require 'open_weather'
class LivedataController < ApplicationController
def index
  options = { units: "metric", APPID: "007a8febcb07c3e92b42531c0b5be81a" }
  @weather = OpenWeather::Current.city("Melbourne, AU", options)
end
end
