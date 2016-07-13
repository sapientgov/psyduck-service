require 'rails_helper'

RSpec.describe Staff, type: :model do
	staff = Staff.create!
	staff.login = "FreddyAdmin"
	it "should have a value" do
		staff.login.should eq("FreddyAdmin")
	end
end
