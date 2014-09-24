require 'spec_helper'

describe "productos/index" do
  before(:each) do
    assign(:productos, [
      stub_model(Producto),
      stub_model(Producto)
    ])
  end

  it "renders a list of productos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
