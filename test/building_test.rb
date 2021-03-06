require 'minitest/autorun'
require 'minitest/pride'
require './lib/renter'
require './lib/apartment'
require './lib/building'

class BuildingTest < Minitest::Test

  def setup
    @building = Building.new
    @a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    @b2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})

    @jessie = Renter.new("Jessie")
    @spencer = Renter.new("Spencer")
    @building.add_unit(@a1)
    @building.add_unit(@b2)
  end

  def test_building_exists
    assert_instance_of Building, @building
  end

  def test_it_starts_with_no_apartments
    building = Building.new
    assert [], building.units
  end

  def test_units_can_be_added_to_building
    assert_equal [@a1, @b2], @building.units
  end

  def test_building_average_rent
    assert_equal 1099.5, @building.average_rent
  end

  def test_renter_with_highest_rent
    assert_equal
  end
end 
