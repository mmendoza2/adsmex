require 'spec_helper'

describe "cursos/index" do
  before(:each) do
    assign(:cursos, [
      stub_model(Curso),
      stub_model(Curso)
    ])
  end

  it "renders a list of cursos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
