require 'rails_helper'

RSpec.describe "staffs/index", type: :view do
  before(:each) do
    assign(:staffs, [
      Staff.create!(
        :login => "Login",
        :password => "Password",
        :admin => false
      ),
      Staff.create!(
        :login => "Login",
        :password => "Password",
        :admin => false
      )
    ])
  end

  it "renders a list of staffs" do
    render
    assert_select "tr>td", :text => "Login".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
