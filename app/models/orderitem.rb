class Orderitem < SalesforceModel
	self.table_name =  ENV['HEROKUCONNECT_SCHEMA'] + '.orderitem'
  belongs_to :contact, :primary_key => "sfid", :foreign_key => "contactid"
  belongs_to :account, :primary_key => "sfid", :foreign_key => "accountid"
end
