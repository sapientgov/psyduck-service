require 'rails_helper'

RSpec.describe "staffs/edit", type: :view do
  before(:each) do
    @staff = assign(:staff, Staff.create!(
      :login => "MyString",
      :password => "MyString",
      :admin => false
    ))
  end

  it "renders the edit staff form" do
    render

    assert_select "form[action=?][method=?]", staff_path(@staff), "post" do

      assert_select "input#staff_login[name=?]", "staff[login]"

      assert_select "input#staff_password[name=?]", "staff[password]"

      assert_select "input#staff_admin[name=?]", "staff[admin]"
    end
  end
end
