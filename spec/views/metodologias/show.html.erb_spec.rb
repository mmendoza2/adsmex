require 'spec_helper'

describe "metodologias/show" do
  before(:each) do
    @metodologia = assign(:metodologia, stub_model(Metodologia))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
