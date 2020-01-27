class Article < ApplicationRecord
  include Sluggable

  has_rich_text :content
  has_slug input_fields: [:title]

  validates :title, :description, :content, :image_url, :meta_title, :meta_description, presence: true
  validates :title, :slug, uniqueness: true

  def to_param
    slug
  end
end
