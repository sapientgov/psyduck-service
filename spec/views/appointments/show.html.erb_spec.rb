require 'rails_helper'

RSpec.describe "appointments/show", type: :view do
  before(:each) do
    @appointment = assign(:appointment, Appointment.create!(
      :time => "Time",
      :firstname => "First Name",
      :lastname => "Last Name",
      :office => "Office",
      :phone => "Phone",
      :email => "Email",
      :staff => "Staff"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Time/)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Office/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Staff/)
  end
end
