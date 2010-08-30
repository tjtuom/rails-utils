module RailsUtils
  module DateHelper
    def format_date(date, format = :default)
      I18n.l date, :format => format
    end
  end
end
