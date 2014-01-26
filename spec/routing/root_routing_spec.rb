require "spec_helper"

describe ApplicationController do
  describe "routing" do

    it "routes to images#edit" do
      expect(:get => "/").to route_to("images#new")
    end

  end
end
