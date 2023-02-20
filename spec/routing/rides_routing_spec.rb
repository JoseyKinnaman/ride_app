require "rails_helper"

RSpec.describe RidesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/drivers/1/rides").to route_to("rides#index")
    end

end
