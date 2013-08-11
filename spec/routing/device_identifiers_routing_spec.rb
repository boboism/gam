require "spec_helper"

describe DeviceIdentifiersController do
  describe "routing" do

    it "routes to #index" do
      get("/device_identifiers").should route_to("device_identifiers#index")
    end

    it "routes to #new" do
      get("/device_identifiers/new").should route_to("device_identifiers#new")
    end

    it "routes to #show" do
      get("/device_identifiers/1").should route_to("device_identifiers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/device_identifiers/1/edit").should route_to("device_identifiers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/device_identifiers").should route_to("device_identifiers#create")
    end

    it "routes to #update" do
      put("/device_identifiers/1").should route_to("device_identifiers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/device_identifiers/1").should route_to("device_identifiers#destroy", :id => "1")
    end

  end
end
