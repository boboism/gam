require 'spec_helper'

describe "TransDocInTypes" do
  describe "GET /trans_doc_in_types" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get trans_doc_in_types_path
      response.status.should be(200)
    end
  end
end
