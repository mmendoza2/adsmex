require 'spec_helper'

describe "cursos/new" do
  before(:each) do
    assign(:curso, stub_model(Curso).as_new_record)
  end

  it "renders new curso form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cursos_path, "post" do
    end
  end
end
