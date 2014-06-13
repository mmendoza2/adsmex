require "spec_helper"

describe MetodologiasController do
  describe "routing" do

    it "routes to #index" do
      get("/metodologias").should route_to("metodologias#index")
    end

    it "routes to #new" do
      get("/metodologias/new").should route_to("metodologias#new")
    end

    it "routes to #show" do
      get("/metodologias/1").should route_to("metodologias#show", :id => "1")
    end

    it "routes to #edit" do
      get("/metodologias/1/edit").should route_to("metodologias#edit", :id => "1")
    end

    it "routes to #create" do
      post("/metodologias").should route_to("metodologias#create")
    end

    it "routes to #update" do
      put("/metodologias/1").should route_to("metodologias#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/metodologias/1").should route_to("metodologias#destroy", :id => "1")
    end

  end
end
