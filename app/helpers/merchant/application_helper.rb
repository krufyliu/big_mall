module Merchant::ApplicationHelper
  def link_with_image(name, path, src, options={})
    width = options[:width] || 34
    height = options[:height] || 34
    link_to(name, path) do
      image_tag(src)
    end
  end
end
