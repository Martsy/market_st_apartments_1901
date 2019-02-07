require './lib/renter'
require'./lib/apartment'

class Apartment
  attr_reader :number, :monthly_rent, :bathrooms, :bedrooms, :renter

  def initialize(stats)
    @number = stats[:number] 
    @monthly_rent = stats[:monthly_rent]
    @bathrooms = stats[:bathrooms]
    @bedrooms = stats[:bedrooms]
    @renter = nil
  end

  def add_renter(name)
    @renter = name
  end
end
