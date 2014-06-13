require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe MetodologiasController do

  # This should return the minimal set of attributes required to create a valid
  # Metodologia. As you add validations to Metodologia, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { {  } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MetodologiasController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all metodologias as @metodologias" do
      metodologia = Metodologia.create! valid_attributes
      get :index, {}, valid_session
      assigns(:metodologias).should eq([metodologia])
    end
  end

  describe "GET show" do
    it "assigns the requested metodologia as @metodologia" do
      metodologia = Metodologia.create! valid_attributes
      get :show, {:id => metodologia.to_param}, valid_session
      assigns(:metodologia).should eq(metodologia)
    end
  end

  describe "GET new" do
    it "assigns a new metodologia as @metodologia" do
      get :new, {}, valid_session
      assigns(:metodologia).should be_a_new(Metodologia)
    end
  end

  describe "GET edit" do
    it "assigns the requested metodologia as @metodologia" do
      metodologia = Metodologia.create! valid_attributes
      get :edit, {:id => metodologia.to_param}, valid_session
      assigns(:metodologia).should eq(metodologia)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Metodologia" do
        expect {
          post :create, {:metodologia => valid_attributes}, valid_session
        }.to change(Metodologia, :count).by(1)
      end

      it "assigns a newly created metodologia as @metodologia" do
        post :create, {:metodologia => valid_attributes}, valid_session
        assigns(:metodologia).should be_a(Metodologia)
        assigns(:metodologia).should be_persisted
      end

      it "redirects to the created metodologia" do
        post :create, {:metodologia => valid_attributes}, valid_session
        response.should redirect_to(Metodologia.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved metodologia as @metodologia" do
        # Trigger the behavior that occurs when invalid params are submitted
        Metodologia.any_instance.stub(:save).and_return(false)
        post :create, {:metodologia => {  }}, valid_session
        assigns(:metodologia).should be_a_new(Metodologia)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Metodologia.any_instance.stub(:save).and_return(false)
        post :create, {:metodologia => {  }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested metodologia" do
        metodologia = Metodologia.create! valid_attributes
        # Assuming there are no other metodologias in the database, this
        # specifies that the Metodologia created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Metodologia.any_instance.should_receive(:update).with({ "these" => "params" })
        put :update, {:id => metodologia.to_param, :metodologia => { "these" => "params" }}, valid_session
      end

      it "assigns the requested metodologia as @metodologia" do
        metodologia = Metodologia.create! valid_attributes
        put :update, {:id => metodologia.to_param, :metodologia => valid_attributes}, valid_session
        assigns(:metodologia).should eq(metodologia)
      end

      it "redirects to the metodologia" do
        metodologia = Metodologia.create! valid_attributes
        put :update, {:id => metodologia.to_param, :metodologia => valid_attributes}, valid_session
        response.should redirect_to(metodologia)
      end
    end

    describe "with invalid params" do
      it "assigns the metodologia as @metodologia" do
        metodologia = Metodologia.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Metodologia.any_instance.stub(:save).and_return(false)
        put :update, {:id => metodologia.to_param, :metodologia => {  }}, valid_session
        assigns(:metodologia).should eq(metodologia)
      end

      it "re-renders the 'edit' template" do
        metodologia = Metodologia.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Metodologia.any_instance.stub(:save).and_return(false)
        put :update, {:id => metodologia.to_param, :metodologia => {  }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested metodologia" do
      metodologia = Metodologia.create! valid_attributes
      expect {
        delete :destroy, {:id => metodologia.to_param}, valid_session
      }.to change(Metodologia, :count).by(-1)
    end

    it "redirects to the metodologias list" do
      metodologia = Metodologia.create! valid_attributes
      delete :destroy, {:id => metodologia.to_param}, valid_session
      response.should redirect_to(metodologias_url)
    end
  end

end
