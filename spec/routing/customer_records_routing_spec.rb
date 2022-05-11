require "rails_helper"

RSpec.describe CustomerRecordsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/customer_records").to route_to("customer_records#index")
    end

    it "routes to #new" do
      expect(get: "/customer_records/new").to route_to("customer_records#new")
    end

    it "routes to #show" do
      expect(get: "/customer_records/1").to route_to("customer_records#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/customer_records/1/edit").to route_to("customer_records#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/customer_records").to route_to("customer_records#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/customer_records/1").to route_to("customer_records#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/customer_records/1").to route_to("customer_records#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/customer_records/1").to route_to("customer_records#destroy", id: "1")
    end
  end
end
