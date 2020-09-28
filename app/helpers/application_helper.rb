module ApplicationHelper

  def copyright_generator
    ::TerryViewTool::Renderer.copyright('Jordan Terry', 'All rights reserved')
  end
end
