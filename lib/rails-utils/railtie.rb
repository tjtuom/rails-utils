require 'rails-utils/flash_helper'
require 'rails-utils/date_helper'
require 'rails'

module RailsUtils
  class Railtie < Rails::Railtie
    initializer 'rails-utils.initialize', :after => :after_initialize do
      ActionView::Base.send :include, RailsUtils::FlashHelper
      ActionView::Base.send :include, RailsUtils::DateHelper
    end
  end
end
