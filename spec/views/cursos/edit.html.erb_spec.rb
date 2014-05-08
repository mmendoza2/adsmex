require 'spec_helper'

describe "cursos/edit" do
  before(:each) do
    @curso = assign(:curso, stub_model(Curso))
  end

  it "renders the edit curso form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", curso_path(@curso), "post" do
    end
  end
end
