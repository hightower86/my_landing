ActiveAdmin.register Client do

permit_params :first_name, :last_name, :email, :phone

  index do
    # column :id
    column :full_name
    column :email
    # column :first_name
    # column :last_name
    column :phone
    column :created_at
    actions
  end

end
