class AddExternalUrlToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :external_url, :string
  end
end
