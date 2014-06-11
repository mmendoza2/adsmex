require 'spec_helper'

describe "archivos/index" do
  before(:each) do
    assign(:archivos, [
      stub_model(Archivo),
      stub_model(Archivo)
    ])
  end

  it "renders a list of archivos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
