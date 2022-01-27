json.array! @estates, partial: "estates/estate", as: :estate



div class="hero-image">
  <!-- Navbar de usuario -->
  <div class="container text-center">
    <div class="row">
      <div class="col mt-3">
      <% if user_signed_in? %>

        <%= link_to 'Publica una propiedad', new_estate_path, class: "mt-5 mx-5 text-white" %>
      </div>

      <div class="col ">
        <%#= image_tag(current_user.avatar_thumbnail, size: '70x70', class: "rounded-circle mx-5") || image_tag("default_profileB.jpg") %>
        <div class="dropdown">
          <button class="btn btn-white dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <%= current_user.first_name %>
          </button>
          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
            <a class="dropdown-item">
              <%if current_user.profile == nil %>
                <%= link_to  "Optimiza tu Panel de Contacto", new_profile_path, class: "mt-5 mx-2 text-black text-decoration-none" %>
              <% else %>
                <%= link_to  "Tu Panel de Contacto", current_user.profile, class: "mt-5 mx-2 text-black text-decoration-none" %>
              <% end %>
            </a>
            <a class="dropdown-item"><%= link_to  "Mis propiedades", estate_dashboard_path, class: "mt-5 mx-2 text-black text-decoration-none" %></a>
            <a class="dropdown-item"><%= link_to  "Mis Propiedades Favoritas", estate_favorite_path, class: "mt-5 mx-2 text-black" %></a>
            <a class="dropdown-item"><%= link_to  "Edita tu perfil", edit_user_registration_path, class: "mt-5 mx-2 text-black" %></a>
            <a class="dropdown-item"><%= link_to  "Cerrar Sesion", destroy_user_session_path, method: :delete, class: "mt-5 mx-2 text-black" %></a>
            <a class="dropdown-item"><span class="mx-2 text-black"><%= current_user.email %></a></span>
          </div>
        </div>
        
          
        <% if current_user.avatar.attached? %>
          <%= image_tag current_user.avatar, size: '50x50', class: "rounded-circle mx-5" %>
        <% else %>
          <%= image_tag("default_profileB.jpg", size: '50x50', class: "rounded-circle mx-5") %>
        <% end %>
        
        
      </div>  
      </div>
        
        

        <div class="hero-text">
          <h1 class="font-weight-bold">SocialHouse</h1>
          <h3 class="mb-3">Portal de Propiedades en Venta con Subsidio Habitacional</h3>
          <%= render 'search_form' %>
        </div>
  </div>
</div>

  <% else %>
      <div class="text-center" >
        <%= link_to "Inicia Sesion", new_user_session_path, class: "text ml-3 text-white text-decoration-none" %>
        <%= link_to  "Registrate", new_user_registration_path, class: "text ml-3 text-white text-decoration-none" %>
      </div>
      <div class="hero-text">
        <h1 class="font-weight-bold">Subsidio</h1>
        <h3 class="my-4">Portal de Propiedades en Venta Solo con Subsidio Habitacional</h3>
            <%
=begin%>
 <div class="row">
              <div class="col-sm-4">
                <h5 class="mt-5">Crea tu cuenta completamente gratis</h5>
                <i class="fas fa-pen-fancy fa-5x mx-auto mt-3"></i>

              </div>
              <div class="col-sm-4">
                <h5 class="mt-5">Busca propiedades o agentes inmobiliarios</h5>
                <i class="fas fa-search fa-5x mx-auto mt-3"></i>

              </div>
              <div class="col-sm-4">
                <h5 class="mt-5">Publica tu propiedad y maneja tu disponibilidad</h5>
                <i class="fas fa-book-reader fa-5x mx-auto mt-3"></i>

              </div>
            </div> 
<%
=end%>
        <%= render 'search_form' %>
      </div>
  <% end %>
</div>







