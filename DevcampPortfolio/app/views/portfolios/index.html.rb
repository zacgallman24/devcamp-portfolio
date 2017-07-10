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

<% @blogs.each do |blog| %>
      <tr>
        <td><%= blog.title %></td>
        <td><%= blog.body %></td>
        <td><%= link_to 'Show', blog %></td>
        <td><%= link_to 'Edit', edit_blog_path(blog) %></td>
        <td><%= link_to 'Delete Post', blog, method: :delete, data: { confirm: 'Are you sure?' } %></td>
      </tr>
    <% end %>