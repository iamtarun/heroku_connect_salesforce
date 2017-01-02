class Case < SalesforceModel
	self.table_name =  ENV['HEROKUCONNECT_SCHEMA'] + '.case'
  belongs_to :contact, :primary_key => "sfid", :foreign_key => "contactid"
  belongs_to :account, :primary_key => "sfid", :foreign_key => "accountid"
end
