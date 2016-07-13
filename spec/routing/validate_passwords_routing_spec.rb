require "rails_helper"

RSpec.describe ValidatePasswordsController, type: :routing do
  describe "routing" do

    it "routes to #check" do
      expect(:post => "/validate_passwords").to route_to("validate_passwords#check")
    end
    
  end
end
