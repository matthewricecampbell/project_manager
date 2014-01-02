require 'spec_helper'

describe "projects/edit.html.erb" do
  it "renders a form to edit Project" do
    visit root_path
    page.should have_css("input#project_title")
    page.should have_css("input[type='submit']")
  end
end
