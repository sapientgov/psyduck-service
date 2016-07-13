require 'rails_helper'

RSpec.describe "staffs/new", type: :view do
  before(:each) do
    assign(:staff, Staff.new(
      :login => "MyString",
      :password => "MyString",
      :admin => false
    ))
  end

  it "renders new staff form" do
    render

    assert_select "form[action=?][method=?]", staffs_path, "post" do

      assert_select "input#staff_login[name=?]", "staff[login]"

      assert_select "input#staff_password[name=?]", "staff[password]"

      assert_select "input#staff_admin[name=?]", "staff[admin]"
    end
  end
end
