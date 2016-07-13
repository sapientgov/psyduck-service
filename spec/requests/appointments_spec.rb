require 'rails_helper'

RSpec.describe "Appointments", type: :request do
  
  @appointments_path = "/appointments.json"
  @appointment_path = "/appointment.json"
  
  describe "GET /appointments" do
    it "get appointments" do
      get @appointments_path
      expect(response).to have_http_status(200)
    end
  end
  
  describe "GET #show" do
    it "get appointments" do
      appt = Appointment.create
      get @appointment_path, params: {id: appt.to_param}
      expect(response).to have_http_status(200)
    end
  end

  describe "GET #edit" do
    it "do edit" do
      appt = Appointment.create! 
      get @appointments_path, params: {id: appt.to_param}
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    it "do create" do
      appt = Appointment.create!
      # expect {
        # post '/appointments.json', appt.to_json, { 'CONTENT_TYPE' => 'application/json', 'ACCEPT' => 'application/json' }
      # }.to change(Appointment, :count).by(1)
    end
  end

  describe "PUT #update" do
    it "do update" do
      appt = Appointment.create!
      # put '/appointments/' + appt.id + '.json', :appointment => appt.attributes = { :firstname => "test" }
      # expect(response).to be_success
    end
  end

  describe "DELETE #destroy" do
    it "do delete" do
      appt = Appointment.create!
      expect {
        delete '/appointments/' + appt.id + '.json'
      }.to change(Appointment, :count).by(-1)
    end
  end
end
