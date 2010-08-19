require 'rails-utils/flash_helper'
require 'rails'

module RailsUtils
  class Railtie < Rails::Railtie
    initializer 'rails-utils.initialize', :after => :after_initialize do
      ActionView::Base.send :include, RailsUtils::FlashHelper
    end
  end
end
