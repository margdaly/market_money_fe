class VendorsController < ApplicationController
  def show
    response = Faraday.get("http://localhost:3000/api/v0/vendors/#{params[:id]}")
    @vendor = JSON.parse(response.body, symbolize_names: true)[:data]
  end
end