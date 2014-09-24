require 'spec_helper'

describe "archivos/new" do
  before(:each) do
    assign(:archivo, stub_model(Archivo).as_new_record)
  end

  it "renders new archivo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", archivos_path, "post" do
    end
  end
end
