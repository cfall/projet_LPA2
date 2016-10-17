require 'test_helper'

class CityTest < ActiveSupport::TestCase
 setup do 
   @city = cities(:one)
   @citywrong = cities(:two)
end
  
  test "Should create city" do 
    VCR.use_cassette("nominatim") do 
      assert_difference('City.count') do
      city = City.new  name: @city.name
      city.save
      end
    end
  end
  
test "Should break on unknown city" do 
  
  
