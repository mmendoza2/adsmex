require 'spec_helper'

describe "metodologias/new" do
  before(:each) do
    assign(:metodologia, stub_model(Metodologia).as_new_record)
  end

  it "renders new metodologia form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", metodologias_path, "post" do
    end
  end
end
