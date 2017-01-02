class Opportunity < SalesforceModel
	self.table_name =  ENV['HEROKUCONNECT_SCHEMA'] + '.opportunity'
  belongs_to :account, :primary_key => 'sfid', :foreign_key => 'accountid'
end
