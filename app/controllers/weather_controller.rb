class WeatherController < ApplicationController
  def city

    url = "https://api.openweathermap.org/data/2.5/weather?appid=#{ENV['MYAPIKEY']}&q=#{params[:city]}&units=metric"

    # url = "http://weather/api/api=#{ENV['MYAPIKEY']}"
    response = HTTParty.get url
    body = JSON.parse(response.body)

    @temp = body['main']['temp']
    @name = body['name']
    user = User.find(session[:user_id])
    user.cities.create(name: @name, city: '')
  end

  def search; end


end