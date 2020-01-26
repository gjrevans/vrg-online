class ProjectsController < ApplicationController
  def index
    @projects = Project.all.order(created_at: :desc)
  end

  def show
    @project = Project.find_by!(slug: params[:slug])
  end
end
