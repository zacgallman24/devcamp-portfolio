<h1>Portfolio Items</h1>

<% @portfolio_items.each do |portfolio_item| %>
  <p><%= portfolio_item.title %></p>
  <p><%= portfolio_item.subtitle %></p>
  <p><%= portfolio_item.body %></p>
  <%= image_tag portfolio_item.thumb_image unless portfolio_item.thumb_image.nil? %>
<% end %>
 Added new and push origin to branch and feature
 end
 
 def destroy
end

