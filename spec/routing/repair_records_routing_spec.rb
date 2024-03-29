require "spec_helper"

describe RepairRecordsController do
  describe "routing" do

    it "routes to #index" do
      get("/repair_records").should route_to("repair_records#index")
    end

    it "routes to #new" do
      get("/repair_records/new").should route_to("repair_records#new")
    end

    it "routes to #show" do
      get("/repair_records/1").should route_to("repair_records#show", :id => "1")
    end

    it "routes to #edit" do
      get("/repair_records/1/edit").should route_to("repair_records#edit", :id => "1")
    end

    it "routes to #create" do
      post("/repair_records").should route_to("repair_records#create")
    end

    it "routes to #update" do
      put("/repair_records/1").should route_to("repair_records#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/repair_records/1").should route_to("repair_records#destroy", :id => "1")
    end

  end
end
