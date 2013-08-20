require "spec_helper"

describe TransDocInTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/trans_doc_in_types").should route_to("trans_doc_in_types#index")
    end

    it "routes to #new" do
      get("/trans_doc_in_types/new").should route_to("trans_doc_in_types#new")
    end

    it "routes to #show" do
      get("/trans_doc_in_types/1").should route_to("trans_doc_in_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/trans_doc_in_types/1/edit").should route_to("trans_doc_in_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/trans_doc_in_types").should route_to("trans_doc_in_types#create")
    end

    it "routes to #update" do
      put("/trans_doc_in_types/1").should route_to("trans_doc_in_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/trans_doc_in_types/1").should route_to("trans_doc_in_types#destroy", :id => "1")
    end

  end
end
