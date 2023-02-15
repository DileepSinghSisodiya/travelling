ActiveAdmin.register Hotel do

  controller do
    def find_resource
      scoped_collection.where(id: params[:id]).first!
    end
  end

  sidebar :help do
    "Need help? Email us at techwinners@support.com"
  end


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :address, :phon, :email, :city, :description, :image
  #
  # or
  #
  permit_params do
    permitted = [:name, :address, :phon, :email, :city, :description, :image]
    permitted << :other if params[:action] == 'create' && current_user
    permitted
  end
  
end
