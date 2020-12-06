ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :username, :fullname, :gender, :age, :occupation, :is_creator
  #
  # or
  #
  # permit_params do
   # permitted = [:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :username, :fullname, :gender, :occupation, :age, :is_creator]
    #permitted << :other if (params[:action] == 'create' || params[:action] == 'edit' )&& current_user.admin?
    #permitted
   #end
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


end
