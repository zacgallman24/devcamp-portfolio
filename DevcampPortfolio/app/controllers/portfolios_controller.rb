class PortfoliosController < ApplicationController 
  def index
    @portfolio_items=Portfolio.all
  <p><%= portfolio_items.title %><p>
  <p><%= portfolio_items.subtitle %><p>
  <p><%= portfolio_items.body %><p>
  <%= image_tag portfolio_items.thumb_image %>
end
