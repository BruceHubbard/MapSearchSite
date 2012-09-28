class AddressController < ApplicationController
  def index
  end

  def search
  	render :json => Address.where("latitude <= ?", params[:north]).all
  end
end
