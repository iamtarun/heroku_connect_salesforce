class Product2 < SalesforceModel
	self.table_name =  ENV['HEROKUCONNECT_SCHEMA'] + '.product2'
  belongs_to :account, :primary_key => "sfid", :foreign_key => "accountid"
end
