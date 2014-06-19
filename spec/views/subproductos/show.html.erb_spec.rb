require 'spec_helper'

describe "subproductos/show" do
  before(:each) do
    @subproducto = assign(:subproducto, stub_model(Subproducto))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
