module PagesHelper
  def truncate_description(description)
    truncate(description, length: 110, omission: '...')
  end
end
