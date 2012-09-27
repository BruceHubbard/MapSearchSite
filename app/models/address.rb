class Address < ActiveRecord::Base
  attr_accessible :address1, :city, :latitude, :longitude, :state, :zip
end
