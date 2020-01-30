class ServicesController < ApplicationController
  def digital_discovery_and_seo
    @items = JSON.parse(File.read('public/json/seo_story.json'))
    @suggestions = JSON.parse(File.read('public/json/seo_suggestions.json'))
  end

  def web_design_and_development
    @projects = Project.all.order(created_at: :desc)
    @items = JSON.parse(File.read('public/json/development_story.json'))
  end

  def branding_and_design
  end

  def video_production
  end

  def paid_search
  end

  def conversion_optimization
  end

  def engagement_and_retargeting
  end

  def loyalty_programs
  end

  def frequently_asked_questions
    @items = JSON.parse(File.read('public/json/seo_story.json'))
  end
end
