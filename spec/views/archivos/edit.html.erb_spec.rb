require 'spec_helper'

describe "archivos/edit" do
  before(:each) do
    @archivo = assign(:archivo, stub_model(Archivo))
  end

  it "renders the edit archivo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", archivo_path(@archivo), "post" do
    end
  end
end
