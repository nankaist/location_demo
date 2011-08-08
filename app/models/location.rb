class Location < ActiveRecord::Base
  attr_accessible :address, :latitude, :longitude, :ip_address
  
  # geocoded_by :address
  # after_validation :geocode
  
  # reverse_geocoded_by :latitude, :longitude
  # after_validation :reverse_geocode
  
  geocoded_by :ip_address,
    :latitude => :lat, :longitude => :lon
  after_validation :geocode

end
