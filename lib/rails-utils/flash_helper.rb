module RailsUtils
  module FlashHelper
    def show_flash
      messages = flash.collect{ |key,msg| content_tag(:div, msg, :id => key) }
      if messages.empty?
        ''
      else
        content_tag(:div, messages.join.html_safe, :id => 'flash')
      end
    end
  end
end
