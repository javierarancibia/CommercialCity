ActiveAdmin.register Estate do

  permit_params :user_id, :address, :price, :rooms, :bathrooms, :parking, :storage, :description, :location_id, :category_id, :type_id

  index do 
    column "Modalidad", :type do |type|
      type.type.mode
    end
    column "Usuario", :user
    column "Tipo de Propiedad", :category
    column "Direccion", :address
    column "Ciudad", :location
    
    column "Precio", :price, :sortable => :price do |estate|
      number_to_currency estate.price
    end
    actions
  end
  
end
