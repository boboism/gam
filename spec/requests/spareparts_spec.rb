require 'spec_helper'

describe "Spareparts" do
  describe "GET /spareparts" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get spareparts_path
      response.status.should be(200)
    end
  end
end
