ActiveAdmin.register User do
  # permit_params :email, :first_name, :last_name, :role

  # controller do
  #
  #   def create
  #     user = User.invite!(permitted_params[:user], current_admin_user)
  #     flash[:notice] = 'User created successfully'
  #     redirect_to admin_user_path(user)
  #   end
  # end
  index do
    selectable_column
    id_column
    column :email
    column :first_name
    column :last_name
    column :role
    actions
  end

  filter :email
  filter :first_name
  filter :last_name
  filter :role

  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :email
      f.input :first_name
      f.input :last_name
      f.input :role
    end
    f.actions
  end

  permit_params do
    permitted = [:email, :first_name, :last_name, :role]
    permitted
  end

end
