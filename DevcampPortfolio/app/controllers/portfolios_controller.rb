class PortfoliosController < ApplicationController 
  def index
    @portfolio_items=Portfolio.all
  end
  
  def Angular
    @angular_portfolio_items = Portfolio.angular
  end
  
  def new
    @portfolio_items = Portfolio.new
  end
 def update
    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to @blog, notice: 'Your blog is now live.'}
      else
        format.html { render :edit }
      end
    end
  end
  
  def edit 
  end 
  
  def show
  @portfolio_items= Portfolio.find(params{:id})
  end
  
# Redirect
  def destroy
    @blog.destroy
    respond_to do |format|
      format.html { redirect_to blogs_url, notice: 'Post was removed.' }
    end
  end
  
 end