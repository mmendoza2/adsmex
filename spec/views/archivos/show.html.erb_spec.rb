require 'spec_helper'

describe "archivos/show" do
  before(:each) do
    @archivo = assign(:archivo, stub_model(Archivo))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
