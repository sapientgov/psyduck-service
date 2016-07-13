require 'rails_helper'

RSpec.describe "appointments/index", type: :view do
  before(:each) do
    assign(:appointments, [
      Appointment.create!(
        :time => "Time",
        :person => "Person",
        :office => "Office",
        :phone => "Phone",
        :email => "Email",
        :staff => "Staff"
      ),
      Appointment.create!(
        :time => "Time",
        :person => "Person",
        :office => "Office",
        :phone => "Phone",
        :email => "Email",
        :staff => "Staff"
      )
    ])
  end

  it "renders a list of appointments" do
    render
    assert_select "tr>td", :text => "Time".to_s, :count => 2
    assert_select "tr>td", :text => "Person".to_s, :count => 2
    assert_select "tr>td", :text => "Office".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Staff".to_s, :count => 2
  end
end
