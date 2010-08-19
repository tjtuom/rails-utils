require 'spec_helper'
require 'rails-utils/flash_helper'

describe RailsUtils::FlashHelper do

  class Helper
    include RailsUtils::FlashHelper
    include RailsUtilsSpecHelper
  end
  let(:helper) { Helper.new }

  describe "#show_flash" do
    it 'does not show any flash messages when no flash has been set' do
      helper.stub!(:flash).and_return({})
      helper.show_flash.should == ''
    end

    it 'shows the #flash and #<level> divs when a flash is set' do
      helper.stub!(:flash).and_return({:notice => 'Foo.'})
      helper.show_flash.should have_tag('#flash #notice', 'Foo.')
    end
  end
end

