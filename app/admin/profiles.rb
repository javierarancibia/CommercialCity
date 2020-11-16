ActiveAdmin.register Profile do

  permit_params :user_id, :url, :phone, :email, :address
  
end
