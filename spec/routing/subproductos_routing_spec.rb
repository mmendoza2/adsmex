require "spec_helper"

describe SubproductosController do
  describe "routing" do

    it "routes to #index" do
      get("/subproductos").should route_to("subproductos#index")
    end

    it "routes to #new" do
      get("/subproductos/new").should route_to("subproductos#new")
    end

    it "routes to #show" do
      get("/subproductos/1").should route_to("subproductos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/subproductos/1/edit").should route_to("subproductos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/subproductos").should route_to("subproductos#create")
    end

    it "routes to #update" do
      put("/subproductos/1").should route_to("subproductos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/subproductos/1").should route_to("subproductos#destroy", :id => "1")
    end

  end
end
