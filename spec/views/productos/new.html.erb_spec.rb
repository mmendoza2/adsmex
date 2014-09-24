require 'spec_helper'

describe "productos/new" do
  before(:each) do
    assign(:producto, stub_model(Producto).as_new_record)
  end

  it "renders new producto form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", productos_path, "post" do
    end
  end
end
