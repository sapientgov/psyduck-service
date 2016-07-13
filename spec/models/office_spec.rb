require 'rails_helper'

RSpec.describe Office, type: :model do
	office = Office.create!
	office.name = "Oracle"
	office.address = "1 infinite loop, Cupertino, CA"
	it "should have a value" do
		office.name.should eq("Oracle")
	end
end
