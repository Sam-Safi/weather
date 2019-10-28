class WeatherController < ApplicationController
  def city
#
#     require 'httparty'
#    response = HTTParty.get("https://api.openweathermap.org/data/2.5/weather?appid=f46cb82bb879ec7201591b87896c4429&q=#{params[:city]}")
#   puts()

    url = "https://api.openweathermap.org/data/2.5/weather?appid=f46cb82bb879ec7201591b87896c4429&q=#{params[:city]}"

    response = HTTParty.get url
    body = JSON.parse(response.body)

    @temp = body['main']['temp']
    @name = body['name']
  end
def search

end


end