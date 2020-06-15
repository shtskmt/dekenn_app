ActiveAdmin.register Contact do
  permit_params :name, :email, :message

  index do
    selectable_column
    id_column
    column :name
    column :email
    column :message
    actions
  end
end
