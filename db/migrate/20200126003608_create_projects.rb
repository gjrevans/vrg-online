class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :slug
      t.text :description
      t.string :meta_title
      t.text :meta_description
      t.string :image_url
      t.timestamps
    end
  end
end
