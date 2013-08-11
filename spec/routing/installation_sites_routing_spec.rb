require "spec_helper"

describe InstallationSitesController do
  describe "routing" do

    it "routes to #index" do
      get("/installation_sites").should route_to("installation_sites#index")
    end

    it "routes to #new" do
      get("/installation_sites/new").should route_to("installation_sites#new")
    end

    it "routes to #show" do
      get("/installation_sites/1").should route_to("installation_sites#show", :id => "1")
    end

    it "routes to #edit" do
      get("/installation_sites/1/edit").should route_to("installation_sites#edit", :id => "1")
    end

    it "routes to #create" do
      post("/installation_sites").should route_to("installation_sites#create")
    end

    it "routes to #update" do
      put("/installation_sites/1").should route_to("installation_sites#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/installation_sites/1").should route_to("installation_sites#destroy", :id => "1")
    end

  end
end
