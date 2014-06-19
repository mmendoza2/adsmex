require 'spec_helper'

describe "subproductos/new" do
  before(:each) do
    assign(:subproducto, stub_model(Subproducto).as_new_record)
  end

  it "renders new subproducto form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", subproductos_path, "post" do
    end
  end
end
