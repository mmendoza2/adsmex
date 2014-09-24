require 'spec_helper'

describe "cursos/show" do
  before(:each) do
    @curso = assign(:curso, stub_model(Curso))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
