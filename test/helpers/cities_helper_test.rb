require 'test_helper'

VCR.configure do |config|

 config.cassette_library_dir = "fixtures/vcr_cassettes"

 config.hook_into :webmock # or :fakeweb

end



class CitiesHelperTest < ActionView::TestCase
   setup do

   @city = cities(:one)

   @cityWrong = cities(:two)

 end
   test "should create city" do

   assert_difference('City.count') do

     city = City.new  name: @city.name

     city.save

   end

 end
end
