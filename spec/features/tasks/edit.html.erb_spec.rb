require 'spec_helper'

describe "task edit view" do
  before(:each) do
    @project = Project.create
    @task = @project.tasks.create
  end

  it "should have proper elements" do
    visit edit_project_task_path(@task.project, @task)
    page.should have_css("input#task_title")
    page.should have_css("input#task_description")
  end
end
