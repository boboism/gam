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

describe InstallationSitesController do

  # This should return the minimal set of attributes required to create a valid
  # InstallationSite. As you add validations to InstallationSite, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "description" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # InstallationSitesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all installation_sites as @installation_sites" do
      installation_site = InstallationSite.create! valid_attributes
      get :index, {}, valid_session
      assigns(:installation_sites).should eq([installation_site])
    end
  end

  describe "GET show" do
    it "assigns the requested installation_site as @installation_site" do
      installation_site = InstallationSite.create! valid_attributes
      get :show, {:id => installation_site.to_param}, valid_session
      assigns(:installation_site).should eq(installation_site)
    end
  end

  describe "GET new" do
    it "assigns a new installation_site as @installation_site" do
      get :new, {}, valid_session
      assigns(:installation_site).should be_a_new(InstallationSite)
    end
  end

  describe "GET edit" do
    it "assigns the requested installation_site as @installation_site" do
      installation_site = InstallationSite.create! valid_attributes
      get :edit, {:id => installation_site.to_param}, valid_session
      assigns(:installation_site).should eq(installation_site)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new InstallationSite" do
        expect {
          post :create, {:installation_site => valid_attributes}, valid_session
        }.to change(InstallationSite, :count).by(1)
      end

      it "assigns a newly created installation_site as @installation_site" do
        post :create, {:installation_site => valid_attributes}, valid_session
        assigns(:installation_site).should be_a(InstallationSite)
        assigns(:installation_site).should be_persisted
      end

      it "redirects to the created installation_site" do
        post :create, {:installation_site => valid_attributes}, valid_session
        response.should redirect_to(InstallationSite.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved installation_site as @installation_site" do
        # Trigger the behavior that occurs when invalid params are submitted
        InstallationSite.any_instance.stub(:save).and_return(false)
        post :create, {:installation_site => { "description" => "invalid value" }}, valid_session
        assigns(:installation_site).should be_a_new(InstallationSite)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        InstallationSite.any_instance.stub(:save).and_return(false)
        post :create, {:installation_site => { "description" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested installation_site" do
        installation_site = InstallationSite.create! valid_attributes
        # Assuming there are no other installation_sites in the database, this
        # specifies that the InstallationSite created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        InstallationSite.any_instance.should_receive(:update_attributes).with({ "description" => "MyString" })
        put :update, {:id => installation_site.to_param, :installation_site => { "description" => "MyString" }}, valid_session
      end

      it "assigns the requested installation_site as @installation_site" do
        installation_site = InstallationSite.create! valid_attributes
        put :update, {:id => installation_site.to_param, :installation_site => valid_attributes}, valid_session
        assigns(:installation_site).should eq(installation_site)
      end

      it "redirects to the installation_site" do
        installation_site = InstallationSite.create! valid_attributes
        put :update, {:id => installation_site.to_param, :installation_site => valid_attributes}, valid_session
        response.should redirect_to(installation_site)
      end
    end

    describe "with invalid params" do
      it "assigns the installation_site as @installation_site" do
        installation_site = InstallationSite.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        InstallationSite.any_instance.stub(:save).and_return(false)
        put :update, {:id => installation_site.to_param, :installation_site => { "description" => "invalid value" }}, valid_session
        assigns(:installation_site).should eq(installation_site)
      end

      it "re-renders the 'edit' template" do
        installation_site = InstallationSite.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        InstallationSite.any_instance.stub(:save).and_return(false)
        put :update, {:id => installation_site.to_param, :installation_site => { "description" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested installation_site" do
      installation_site = InstallationSite.create! valid_attributes
      expect {
        delete :destroy, {:id => installation_site.to_param}, valid_session
      }.to change(InstallationSite, :count).by(-1)
    end

    it "redirects to the installation_sites list" do
      installation_site = InstallationSite.create! valid_attributes
      delete :destroy, {:id => installation_site.to_param}, valid_session
      response.should redirect_to(installation_sites_url)
    end
  end

end
