require "spec_helper"

describe SparepartsController do
  describe "routing" do

    it "routes to #index" do
      get("/spareparts").should route_to("spareparts#index")
    end

    it "routes to #new" do
      get("/spareparts/new").should route_to("spareparts#new")
    end

    it "routes to #show" do
      get("/spareparts/1").should route_to("spareparts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/spareparts/1/edit").should route_to("spareparts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/spareparts").should route_to("spareparts#create")
    end

    it "routes to #update" do
      put("/spareparts/1").should route_to("spareparts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/spareparts/1").should route_to("spareparts#destroy", :id => "1")
    end

  end
end
