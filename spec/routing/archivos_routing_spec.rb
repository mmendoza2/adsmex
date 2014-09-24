require "spec_helper"

describe ArchivosController do
  describe "routing" do

    it "routes to #index" do
      get("/archivos").should route_to("archivos#index")
    end

    it "routes to #new" do
      get("/archivos/new").should route_to("archivos#new")
    end

    it "routes to #show" do
      get("/archivos/1").should route_to("archivos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/archivos/1/edit").should route_to("archivos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/archivos").should route_to("archivos#create")
    end

    it "routes to #update" do
      put("/archivos/1").should route_to("archivos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/archivos/1").should route_to("archivos#destroy", :id => "1")
    end

  end
end
