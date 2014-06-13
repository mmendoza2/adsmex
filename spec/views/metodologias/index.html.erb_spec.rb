require 'spec_helper'

describe "metodologias/index" do
  before(:each) do
    assign(:metodologias, [
      stub_model(Metodologia),
      stub_model(Metodologia)
    ])
  end

  it "renders a list of metodologias" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
