class PagesController < ApplicationController
  def index
    @projects = Project.all.order(created_at: :desc)
    @services = JSON.parse(File.read('public/json/services.json'))
    @clients = JSON.parse(File.read('public/json/clients.json'))
  end
end
