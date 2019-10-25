class WeatherController < ApplicationController
  def city

    # require 'httparty'
    response = HTTParty.get("https://api.openweathermap.org/data/2.5/weather?appid=f46cb82bb879ec7201591b87896c4429&q=#{params[:city]}")



  end

end
