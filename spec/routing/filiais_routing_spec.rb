require "rails_helper"

RSpec.describe FiliaisController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/filiais").to route_to("filiais#index")
    end

    it "routes to #new" do
      expect(:get => "/filiais/new").to route_to("filiais#new")
    end

    it "routes to #show" do
      expect(:get => "/filiais/1").to route_to("filiais#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/filiais/1/edit").to route_to("filiais#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/filiais").to route_to("filiais#create")
    end

    it "routes to #update" do
      expect(:put => "/filiais/1").to route_to("filiais#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/filiais/1").to route_to("filiais#destroy", :id => "1")
    end

  end
end
