require 'spec_helper'

describe "SparepartTransDocOuts" do
  describe "GET /sparepart_trans_doc_outs" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get sparepart_trans_doc_outs_path
      response.status.should be(200)
    end
  end
end
