ActiveAdmin.register Client do

permit_params :name, :last_name, :email, :phone

  index do
    column :id
    column :email
    column :name
    column :last_name
    column :phone
    actions
  end

end
