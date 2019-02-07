class Renter

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def test_renter_has_name
    assert_equal "Jessie", @jessie.name
  end
end
