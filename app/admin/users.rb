ActiveAdmin.register User do
  permit_params :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :username, :fullname, :gender, :age, :occupation, :is_creator
  # permit_params :email, :encryped_password, :username, :fullname, :gender, :age, :occupation, :is_creator

  index do
    selectable_column
    id_column
    column :email
    column :username
    column :fullname
    column :age
    column :gender
    column :occupation
    column :is_creator
    actions
  end

  form do |f|
    f.inputs do
      f.input :email
      # f.input :password
      # f.input :password_confirmation
      f.input :reset_password_token
      f.input :fullname
      f.input :username
      f.input :is_creator
    end
    f.actions
  end
  
end
