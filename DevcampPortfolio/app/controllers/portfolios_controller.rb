class PortfoliosController < ApplicationController 
  def index
    @portfolio_items=Portfolio.all
  end
  
  
  def new
    @portfolio_items = Portfolio.new
  end
   def update
    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to @blog, notice: 'Your blog is now live.'
        format.json { render :show, status: :ok, location: @blog }
      else
        format.html { render :edit }
      end
    end
  end
  
end