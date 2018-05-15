class PortfoliosController < ApplicationController
	def index
		@portfolio_items = Portfolio.all #MVC Portfolio.all is calling the model inside the controller
	end

	def new
		@portfolio_item = Portfolio.new
	end

	 def create
    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title,:subtitle, :body))

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Your portfolio item is now live.' }
        format.json { render :show, status: :created, location: @blog }
      else
        format.html { render :new }
      end
      end
    end
end
