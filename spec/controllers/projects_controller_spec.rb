require 'spec_helper'

describe ProjectsController do
  render_views
  describe "GET index" do
    it "should display correct title" do
      get "index"
      response.body.should have_css("h1", :text => "Projects")
    end

    it "response should be successful" do
      get "index"
      response.should be_success
    end
  end

  describe "POST create" do
    let(:project) { mock_model(Project).as_null_object }

    before do
      Project.stub(:new).and_return(project)
    end

    it "should create a new Project" do
      Project.should_receive(:new).
      with("text" => "cut down the apple tree").
      and_return(project)
      get "create", :project => { "text" => "cut down the apple tree" }
    end

    it "saves the Project" do
      project.should_receive(:save)
      get "create"
    end

    it "redirects to the Project show" do
      get "create"
      response.should redirect_to(project_path(assigns[:project]))
    end
  end

  describe "PUT update" do
    it "should redirect to index" do
      project = Project.create
      put "update", :id => project.id
      response.should redirect_to(:action => "index")
    end
  end

  describe "DELETE destroy" do
    it "should destroy project" do
      project = Project.create
      delete "destroy", :id => project.id
      project.should redirect_to(projects_path)
    end
  end
end
