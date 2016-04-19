require 'rails_helper'


describe "Businesses API" do
  describe "GET /businesses" do
    it "returns all the movies" do
      get "/businesses", {}, { "Accept" => "application/json" }

      expect(response.status).to eq 200

      body = JSON.parse(response.body)
      business_ids = body.map { |m| m["id"] }

    end
  end
end

