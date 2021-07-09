class ForecastsController < ApplicationController
  def index
    response = HTTP.get("https://api.troposphere.io/forecast/48.5,11.123?token=#{Rails.application.credentials.weather_api[:api_key]}")

    render json: response.parse(:json)
  end
end
