
require File.expand_path(
    File.join(File.dirname(__FILE__), %w[.. lib rails-utils]))

require 'rubygems'
require 'active_support'
require 'action_pack'
require 'action_view'
require 'action_controller'
require 'action_mailer'

require 'rspec_tag_matchers'

Spec::Runner.configure do |config|
  # == Mock Framework
  #
  # RSpec uses it's own mocking framework by default. If you prefer to
  # use mocha, flexmock or RR, uncomment the appropriate line:
  #
  # config.mock_with :mocha
  # config.mock_with :flexmock
  # config.mock_with :rr

  config.include(RspecTagMatchers)

  module RailsUtilsSpecHelper
    include ActionPack
    include ActionView::Context if defined?(ActionView::Context)
    include ActionController::RecordIdentifier
    include ActionView::Helpers::FormHelper
    include ActionView::Helpers::FormTagHelper
    include ActionView::Helpers::FormOptionsHelper
    include ActionView::Helpers::UrlHelper
    include ActionView::Helpers::TagHelper
    include ActionView::Helpers::TextHelper
    include ActionView::Helpers::ActiveRecordHelper if defined?(ActionView::Helpers::ActiveRecordHelper)
    include ActionView::Helpers::ActiveModelHelper if defined?(ActionView::Helpers::ActiveModelHelper)
    include ActionView::Helpers::DateHelper
    include ActionView::Helpers::CaptureHelper
    include ActionView::Helpers::AssetTagHelper
    include ActiveSupport
    include ActionController::PolymorphicRoutes if defined?(ActionController::PolymorphicRoutes)
  end

end

