require "spec_helper"

describe DepreciationMethodsController do
  describe "routing" do

    it "routes to #index" do
      get("/depreciation_methods").should route_to("depreciation_methods#index")
    end

    it "routes to #new" do
      get("/depreciation_methods/new").should route_to("depreciation_methods#new")
    end

    it "routes to #show" do
      get("/depreciation_methods/1").should route_to("depreciation_methods#show", :id => "1")
    end

    it "routes to #edit" do
      get("/depreciation_methods/1/edit").should route_to("depreciation_methods#edit", :id => "1")
    end

    it "routes to #create" do
      post("/depreciation_methods").should route_to("depreciation_methods#create")
    end

    it "routes to #update" do
      put("/depreciation_methods/1").should route_to("depreciation_methods#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/depreciation_methods/1").should route_to("depreciation_methods#destroy", :id => "1")
    end

  end
end
