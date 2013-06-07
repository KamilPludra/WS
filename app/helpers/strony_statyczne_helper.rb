module StronyStatyczneHelper

  def chart_tag (action, height, params = {})
    params[:format] ||= :json
    path = statistics_path(action, params)
    content_tag(:div, :'data-chart' => path, :style => "height: #{height}px;") do
      image_tag('spinner.gif', :size => '24x24', :class => 'spinner')
    end
  end


end
