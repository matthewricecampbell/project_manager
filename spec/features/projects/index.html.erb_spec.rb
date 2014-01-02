require "spec_helper"

describe "projects/index.html.erb" do
  it "renders a form to create a new Project" do
    visit root_path
    page.should have_css("input#project_title")
    page.should have_css("input[type='submit']")
  end
end
