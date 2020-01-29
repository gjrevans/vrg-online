class PagesController < ApplicationController
  def index
    @projects = Project.all.order(created_at: :desc)
    @services = JSON.parse(File.read('public/json/services.json'))
  end
end
