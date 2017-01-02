class Order < SalesforceModel
	self.table_name =  ENV['HEROKUCONNECT_SCHEMA'] + '.order'
  belongs_to :account, :primary_key => "sfid", :foreign_key => "accountid"
end
