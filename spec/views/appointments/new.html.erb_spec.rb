require 'rails_helper'

RSpec.describe "appointments/new", type: :view do
  before(:each) do
    assign(:appointment, Appointment.new(
      :date => "MyString",
      :time => "MyString",
      :firstname => "MyString",
      :lastname => "MyString",
      :office => "MyString",
      :phone => "MyString",
      :email => "MyString",
      :staff => "MyString"
    ))
  end

  it "renders new appointment form" do
    render

    assert_select "form[action=?][method=?]", appointments_path, "post" do

      assert_select "input#appointment_date[name=?]", "appointment[date]"
      
      assert_select "input#appointment_time[name=?]", "appointment[time]"

      assert_select "input#appointment_firstname[name=?]", "appointment[firstname]"
      
      assert_select "input#appointment_lastname[name=?]", "appointment[lastname]"

      assert_select "input#appointment_office[name=?]", "appointment[office]"

      assert_select "input#appointment_phone[name=?]", "appointment[phone]"

      assert_select "input#appointment_email[name=?]", "appointment[email]"

      assert_select "input#appointment_staff[name=?]", "appointment[staff]"
    end
  end
end
