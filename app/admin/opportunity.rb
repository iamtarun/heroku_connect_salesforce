ActiveAdmin.register Opportunity do

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
  filter :accountid
  filter :type
  filter :stagename

  form do |f|
		f.actions
    f.inputs "Opportunity Details" do
      f.input :name
	    f.input :amount
	    f.input :probability
	    f.input :description
	    f.input :isclosed
	    f.input :type
    end
    f.actions
  end
end
