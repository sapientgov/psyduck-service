require 'rails_helper'

RSpec.describe "appointments/edit", type: :view do
  before(:each) do
    @appointment = assign(:appointment, Appointment.create!(
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

  it "renders the edit appointment form" do
    render

    assert_select "form[action=?][method=?]", appointment_path(@appointment), "post" do

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
