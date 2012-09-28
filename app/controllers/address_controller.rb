class AddressController < ApplicationController
  def index
  end

  def search
  	render :json => Address.where("latitude <= ?", params[:north])
  						.where("latitude >= ?", params[:south])
  						.where("longitude >= ?", params[:west])
  						.where("longitude <= ?", params[:east])
  						.all
  end
end
