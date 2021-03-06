ActiveAdmin.register User do
  permit_params :email, :username, :image, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :email
    column :username
    column :image
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :username
  filter :image
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :username
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
