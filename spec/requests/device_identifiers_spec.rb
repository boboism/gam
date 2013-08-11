require 'spec_helper'

describe "DeviceIdentifiers" do
  describe "GET /device_identifiers" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get device_identifiers_path
      response.status.should be(200)
    end
  end
end
