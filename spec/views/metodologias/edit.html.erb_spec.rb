require 'spec_helper'

describe "metodologias/edit" do
  before(:each) do
    @metodologia = assign(:metodologia, stub_model(Metodologia))
  end

  it "renders the edit metodologia form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", metodologia_path(@metodologia), "post" do
    end
  end
end
