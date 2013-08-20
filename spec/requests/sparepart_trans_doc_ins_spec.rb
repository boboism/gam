require 'spec_helper'

describe "SparepartTransDocIns" do
  describe "GET /sparepart_trans_doc_ins" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get sparepart_trans_doc_ins_path
      response.status.should be(200)
    end
  end
end
