class User < SalesforceModel
	self.table_name =  ENV['HEROKUCONNECT_SCHEMA'] + '.user'
  # belongs_to :contact, :primary_key => "sfid", :foreign_key => "contactid"
  # belongs_to :account, :primary_key => "sfid", :foreign_key => "accountid"
end
