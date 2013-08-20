require "spec_helper"

describe SparepartTransDocOutsController do
  describe "routing" do

    it "routes to #index" do
      get("/sparepart_trans_doc_outs").should route_to("sparepart_trans_doc_outs#index")
    end

    it "routes to #new" do
      get("/sparepart_trans_doc_outs/new").should route_to("sparepart_trans_doc_outs#new")
    end

    it "routes to #show" do
      get("/sparepart_trans_doc_outs/1").should route_to("sparepart_trans_doc_outs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/sparepart_trans_doc_outs/1/edit").should route_to("sparepart_trans_doc_outs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/sparepart_trans_doc_outs").should route_to("sparepart_trans_doc_outs#create")
    end

    it "routes to #update" do
      put("/sparepart_trans_doc_outs/1").should route_to("sparepart_trans_doc_outs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/sparepart_trans_doc_outs/1").should route_to("sparepart_trans_doc_outs#destroy", :id => "1")
    end

  end
end
