ActiveAdmin.register Account do

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
  filter :name

	# index do
 #    selectable_column
 #    column :id
 #    column :sfid
 #    column :ownerid
 #    column :_hc_lastop
 #    column :name
 #    column :phone
 #    # column :rating
 #    # column :description
 #    # column :industry
 #    # column :billingstreet
 #    # column :billingpostalcode
 #    # column :billingcity
 #    column :billingstate
 #    column :billingcountry
 #    # column :createddate
 #    # column :createdbyid
 #    # column :lastmodifieddate
 #    # column :lastmodifiedbyid
 #    actions
 #  end
 #  show do
 #    attributes_table do
 #      row :id
	#     row :sfid
	#     row :ownerid
	#     row :_hc_lastop
	#     row :name
	#     row :phone
	#     row :rating
	#     row :description
	#     row :industry
	#     row :billingstreet
	#     row :billingpostalcode
	#     row :billingcity
	#     row :billingstate
	#     row :billingcountry
	#     row :createddate
	#     row :createdbyid
	#     row :lastmodifieddate
	#     row :lastmodifiedbyid
 #    end
 #  end

	form do |f|
		f.actions
    f.inputs "Account Details" do
      f.input :name
      f.input :phone
      f.input :rating
	    f.input :description
	    f.input :industry
	    f.input :billingstreet
	    f.input :billingpostalcode
	    f.input :billingcity    
	    f.input :billingstate
	    f.input :billingcountry, :as => :string
    end
    f.actions
  end

end
