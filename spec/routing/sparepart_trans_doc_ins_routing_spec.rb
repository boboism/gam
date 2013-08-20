require "spec_helper"

describe SparepartTransDocInsController do
  describe "routing" do

    it "routes to #index" do
      get("/sparepart_trans_doc_ins").should route_to("sparepart_trans_doc_ins#index")
    end

    it "routes to #new" do
      get("/sparepart_trans_doc_ins/new").should route_to("sparepart_trans_doc_ins#new")
    end

    it "routes to #show" do
      get("/sparepart_trans_doc_ins/1").should route_to("sparepart_trans_doc_ins#show", :id => "1")
    end

    it "routes to #edit" do
      get("/sparepart_trans_doc_ins/1/edit").should route_to("sparepart_trans_doc_ins#edit", :id => "1")
    end

    it "routes to #create" do
      post("/sparepart_trans_doc_ins").should route_to("sparepart_trans_doc_ins#create")
    end

    it "routes to #update" do
      put("/sparepart_trans_doc_ins/1").should route_to("sparepart_trans_doc_ins#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/sparepart_trans_doc_ins/1").should route_to("sparepart_trans_doc_ins#destroy", :id => "1")
    end

  end
end
