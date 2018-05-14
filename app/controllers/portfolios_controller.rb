class PortfoliosController < ApplicationController
	def index
		@portfolio_items = Portfolio.all #MVC Portfolio.all is calling the model inside the controller
	end
end
