require './lib/renter'
require'./lib/apartment'
require './lib/building'

class Building
  attr_reader :units

  def initialize
    @units = []
  end

  def add_unit(unit)
    @units << unit
  end

  def average_rent
    total =0
  end
end
