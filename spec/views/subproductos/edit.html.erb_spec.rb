require 'spec_helper'

describe "subproductos/edit" do
  before(:each) do
    @subproducto = assign(:subproducto, stub_model(Subproducto))
  end

  it "renders the edit subproducto form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", subproducto_path(@subproducto), "post" do
    end
  end
end
