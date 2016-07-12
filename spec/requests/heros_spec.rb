require 'rails_helper'

RSpec.describe "Heros", type: :request do
  describe "GET #index" do
    it "assigns all heros as @heros" do
      hero = Hero.create! 
      get '/heros.json', params: {}
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "assigns the requested hero as @hero" do
      hero = Hero.create! 
      get '/heros.json', params: {id: hero.to_param}
      expect(response).to be_success
    end
  end

  describe "GET #edit" do
    it "assigns the requested hero as @hero" do
      hero = Hero.create! 
      get '/heros.json', params: {id: hero.to_param}
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Hero" do
        hero = Hero.create! 
        expect {
          post '/heros.json', hero.to_json, { 'CONTENT_TYPE' => 'application/json', 'ACCEPT' => 'application/json' }
        }.to change(Hero, :count).by(1)
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      it "updates the requested hero" do
        hero = Hero.create! 
        put '/heros/' + hero.id + '.json', :hero => hero.attributes = { :age => 10 }
        expect(response).to be_success
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested hero" do
      hero = Hero.create! 
      expect {
        delete '/heros/' + hero.id + '.json'
      }.to change(Hero, :count).by(-1)
    end
  end
end
