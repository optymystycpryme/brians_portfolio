# Default Content for Pages Module
module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = 'Brian Haltom Portfolio'
    @seo_keywords = "Brian Haltom's portfolio"
  end
end
