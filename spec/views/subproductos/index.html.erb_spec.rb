require 'spec_helper'

describe "subproductos/index" do
  before(:each) do
    assign(:subproductos, [
      stub_model(Subproducto),
      stub_model(Subproducto)
    ])
  end

  it "renders a list of subproductos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
