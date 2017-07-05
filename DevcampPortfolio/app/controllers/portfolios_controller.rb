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
      else
        format.html { render :edit }
      end
    end
  end
  
  def edit 
  end 
  #Destroy/delete the record
  @portfolio_items= Portfolio.find(params{:id})
  
end
# Redirect
 def destroy
    @blog.destroy
    respond_to do |format|
      format.html { redirect_to blogs_url, notice: 'Post was removed.' }
    end
  end
  
  <% @blogs.each do |blog| %>
      <tr>
        <td><%= blog.title %></td>
        <td><%= blog.body %></td>
        <td><%= link_to 'Show', blog %></td>
        <td><%= link_to 'Edit', edit_blog_path(blog) %></td>
        <td><%= link_to 'Delete Post', blog, method: :delete, data: { confirm: 'Are you sure?' } %></td>
      </tr>
    <% end %>