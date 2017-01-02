ActiveAdmin.register Case do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
	config.batch_actions = false
	config.per_page = 5

	filter :id
  filter :sfid
  filter :contactid
  filter :accountid
  filter :ownerid
  filter :status

  form do |f|
		f.actions
    f.inputs "Contact Details" do
      f.input :subject
	    f.input :reason
	    f.input :description
	    f.input :status
	    f.input :type
	    f.input :origin
	    f.input :priority
    end
    f.actions
  end
end
