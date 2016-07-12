require 'rails_helper'

describe EchoServicesController, :type => :request do
  describe "GET index" do
    it "echo this" do
      get '/echo_services.json', format: "json", params: {param: "test"}
      expect(response).to be_success
    end
  end
end