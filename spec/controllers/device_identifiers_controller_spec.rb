require 'spec_helper'

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

describe DeviceIdentifiersController do

  # This should return the minimal set of attributes required to create a valid
  # DeviceIdentifier. As you add validations to DeviceIdentifier, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "description" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DeviceIdentifiersController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all device_identifiers as @device_identifiers" do
      device_identifier = DeviceIdentifier.create! valid_attributes
      get :index, {}, valid_session
      assigns(:device_identifiers).should eq([device_identifier])
    end
  end

  describe "GET show" do
    it "assigns the requested device_identifier as @device_identifier" do
      device_identifier = DeviceIdentifier.create! valid_attributes
      get :show, {:id => device_identifier.to_param}, valid_session
      assigns(:device_identifier).should eq(device_identifier)
    end
  end

  describe "GET new" do
    it "assigns a new device_identifier as @device_identifier" do
      get :new, {}, valid_session
      assigns(:device_identifier).should be_a_new(DeviceIdentifier)
    end
  end

  describe "GET edit" do
    it "assigns the requested device_identifier as @device_identifier" do
      device_identifier = DeviceIdentifier.create! valid_attributes
      get :edit, {:id => device_identifier.to_param}, valid_session
      assigns(:device_identifier).should eq(device_identifier)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new DeviceIdentifier" do
        expect {
          post :create, {:device_identifier => valid_attributes}, valid_session
        }.to change(DeviceIdentifier, :count).by(1)
      end

      it "assigns a newly created device_identifier as @device_identifier" do
        post :create, {:device_identifier => valid_attributes}, valid_session
        assigns(:device_identifier).should be_a(DeviceIdentifier)
        assigns(:device_identifier).should be_persisted
      end

      it "redirects to the created device_identifier" do
        post :create, {:device_identifier => valid_attributes}, valid_session
        response.should redirect_to(DeviceIdentifier.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved device_identifier as @device_identifier" do
        # Trigger the behavior that occurs when invalid params are submitted
        DeviceIdentifier.any_instance.stub(:save).and_return(false)
        post :create, {:device_identifier => { "description" => "invalid value" }}, valid_session
        assigns(:device_identifier).should be_a_new(DeviceIdentifier)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        DeviceIdentifier.any_instance.stub(:save).and_return(false)
        post :create, {:device_identifier => { "description" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested device_identifier" do
        device_identifier = DeviceIdentifier.create! valid_attributes
        # Assuming there are no other device_identifiers in the database, this
        # specifies that the DeviceIdentifier created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        DeviceIdentifier.any_instance.should_receive(:update_attributes).with({ "description" => "MyString" })
        put :update, {:id => device_identifier.to_param, :device_identifier => { "description" => "MyString" }}, valid_session
      end

      it "assigns the requested device_identifier as @device_identifier" do
        device_identifier = DeviceIdentifier.create! valid_attributes
        put :update, {:id => device_identifier.to_param, :device_identifier => valid_attributes}, valid_session
        assigns(:device_identifier).should eq(device_identifier)
      end

      it "redirects to the device_identifier" do
        device_identifier = DeviceIdentifier.create! valid_attributes
        put :update, {:id => device_identifier.to_param, :device_identifier => valid_attributes}, valid_session
        response.should redirect_to(device_identifier)
      end
    end

    describe "with invalid params" do
      it "assigns the device_identifier as @device_identifier" do
        device_identifier = DeviceIdentifier.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        DeviceIdentifier.any_instance.stub(:save).and_return(false)
        put :update, {:id => device_identifier.to_param, :device_identifier => { "description" => "invalid value" }}, valid_session
        assigns(:device_identifier).should eq(device_identifier)
      end

      it "re-renders the 'edit' template" do
        device_identifier = DeviceIdentifier.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        DeviceIdentifier.any_instance.stub(:save).and_return(false)
        put :update, {:id => device_identifier.to_param, :device_identifier => { "description" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested device_identifier" do
      device_identifier = DeviceIdentifier.create! valid_attributes
      expect {
        delete :destroy, {:id => device_identifier.to_param}, valid_session
      }.to change(DeviceIdentifier, :count).by(-1)
    end

    it "redirects to the device_identifiers list" do
      device_identifier = DeviceIdentifier.create! valid_attributes
      delete :destroy, {:id => device_identifier.to_param}, valid_session
      response.should redirect_to(device_identifiers_url)
    end
  end

end
