ActiveAdmin.register Contact do

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
  filter :firstname
  filter :lastname
  filter :email
  filter :accountid

	index do
    selectable_column
    column :id
    column :sfid
    column :accountid
    column "Account Id" do |contact|
    	# link_to contact.accountid, admin_account_path(contact.account.id)
  	end
    column :_hc_lastop
    column :name    
    column :firstname
    column :lastname
    column :phone
    column :email
    column :mailingstate
    column :mailingcountry
    actions
  end

 #  show do
 #    attributes_table do
 #      row :id
	#     row :sfid
	#     row :accountid
	#     row :_hc_lastop
	#     row :name    
	#     row :firstname
	#     row :lastname
	#     row :phone
	#     row :email
	#     row :mailingstate
	#     row :mailingcountry
 #    end
 #  end

	form do |f|
		f.actions
    f.inputs "Contact Details" do
      f.input :name
	    f.input :firstname
	    f.input :lastname
	    f.input :phone
	    f.input :email
	    f.input :mailingstreet
	    f.input :mailingpostalcode
	    f.input :mailingcity
	    f.input :mailingstate	    
	    f.input :mailingcountry, :as => :string
    end
    f.actions
  end

end
