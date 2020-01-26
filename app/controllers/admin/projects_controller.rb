module Admin
  class ProjectsController < Admin::ApplicationController
    def find_resource(slug)
      scoped_resource.find_by!(slug: slug)
    end
  end
end
