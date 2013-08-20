require "spec_helper"

describe FaultCategoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/fault_categories").should route_to("fault_categories#index")
    end

    it "routes to #new" do
      get("/fault_categories/new").should route_to("fault_categories#new")
    end

    it "routes to #show" do
      get("/fault_categories/1").should route_to("fault_categories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/fault_categories/1/edit").should route_to("fault_categories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/fault_categories").should route_to("fault_categories#create")
    end

    it "routes to #update" do
      put("/fault_categories/1").should route_to("fault_categories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/fault_categories/1").should route_to("fault_categories#destroy", :id => "1")
    end

  end
end
