<h2>Hola, <%=@cliente.name%></h2>
<%= simple_form_for @user do |f| %>
 <%= f.association :productos, :as => "check_boxes" %><br />
<%= f.button :submit %>
<% end %>