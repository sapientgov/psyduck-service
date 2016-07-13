require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe OfficesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Office. As you add validations to Office, be sure to
  # adjust the attributes here as well.
  #let(:valid_attributes) {
    #skip("Add a hash of attributes valid for your model")
    #{ "name" => "", "address" => "" } 
  #}

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # OfficesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all offices as @offices" do
      office = Office.create
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "assigns the requested office as @office" do
      office = Office.create
      get :index, id: hero 
      expect(response).to be_success
    end
  end

  describe "GET #new" do
    it "assigns a new office as @office" do
      get :new, params: {}, session: valid_session
      expect(assigns(:office)).to be_a_new(Office)
    end
  end

  describe "GET #edit" do
    it "assigns the requested office as @office" do
      office = Office.create
      get :edit, params: {id: office.to_param}, session: valid_session
      expect(assigns(:office)).to eq(office)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Office" do
        expect {
          post :create, params: {office: valid_attributes}, session: valid_session
        }.to change(Office, :count).by(1)
      end

      it "assigns a newly created office as @office" do
        post :create, params: {office: valid_attributes}, session: valid_session
        expect(assigns(:office)).to be_a(Office)
        expect(assigns(:office)).to be_persisted
      end

      it "redirects to the created office" do
        post :create, params: {office: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Office.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved office as @office" do
        post :create, params: {office: invalid_attributes}, session: valid_session
        expect(assigns(:office)).to be_a_new(Office)
      end

      it "re-renders the 'new' template" do
        post :create, params: {office: invalid_attributes}, session: valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested office" do
        office = Office.create! valid_attributes
        put :update, params: {id: office.to_param, office: new_attributes}, session: valid_session
        office.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested office as @office" do
        office = Office.create! valid_attributes
        put :update, params: {id: office.to_param, office: valid_attributes}, session: valid_session
        expect(assigns(:office)).to eq(office)
      end

      it "redirects to the office" do
        office = Office.create! valid_attributes
        put :update, params: {id: office.to_param, office: valid_attributes}, session: valid_session
        expect(response).to redirect_to(office)
      end
    end

    context "with invalid params" do
      it "assigns the office as @office" do
        office = Office.create! valid_attributes
        put :update, params: {id: office.to_param, office: invalid_attributes}, session: valid_session
        expect(assigns(:office)).to eq(office)
      end

      it "re-renders the 'edit' template" do
        office = Office.create! valid_attributes
        put :update, params: {id: office.to_param, office: invalid_attributes}, session: valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested office" do
      office = Office.create! valid_attributes
      expect {
        delete :destroy, params: {id: office.to_param}, session: valid_session
      }.to change(Office, :count).by(-1)
    end

    it "redirects to the offices list" do
      office = Office.create! valid_attributes
      delete :destroy, params: {id: office.to_param}, session: valid_session
      expect(response).to redirect_to(offices_url)
    end
  end

end
