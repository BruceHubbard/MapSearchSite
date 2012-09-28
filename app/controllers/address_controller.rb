class AddressController < ApplicationController
  def index
  end

  def search
  	render :json => Address.all
  end
end
