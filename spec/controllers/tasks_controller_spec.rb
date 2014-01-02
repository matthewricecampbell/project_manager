require 'spec_helper'

describe TasksController do
  before(:each) do
    @project = Project.create
    @task = @project.tasks.create
  end

  describe "POST create" do
    it "should redirect to project#show" do
      post :create, "task"=>{"title"=>"task", "description"=>"description"}, "project_id"=>@project.id
      response.should redirect_to(project_path(assigns[:project]))
    end
  end

  describe "PUT update" do
    it "should redirect to project#show" do
      put :update, "task"=>{"title"=>"tape trim", "description"=>""}, "project_id"=> @project.id, "id"=>@task.id
      response.should redirect_to(project_path(assigns[:project]))
    end
  end

  describe "DELETE destroy" do
    it "should destory a task" do
      delete :destroy, "project_id"=>@project.id, "id"=>@task.id
      response.should redirect_to(project_path(assigns[:project]))
    end
  end
end
