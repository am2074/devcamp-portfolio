module DefaultPageContent
	extend ActiveSupport::Concern

	included do
	  before_action :set_page_defaults
	 end

	def set_page_defaults
		@page_title = "Devcourse | My Portfolio File"
		@seo_keywords = "Arthur Malmis Portfolio"
	end
end