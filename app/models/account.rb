class Account < SalesforceModel
	self.table_name =  ENV['HEROKUCONNECT_SCHEMA'] + '.account'
	# self.primary_key = :sfid
  has_many :contacts, :primary_key => "sfid", :foreign_key => "accountid"
  has_many :cases, :primary_key => 'sfid', :foreign_key => 'accountid'
  has_many :opportunities, :primary_key => 'sfid', :foreign_key => 'accountid'
  has_many :orders, :primary_key => 'sfid', :foreign_key => 'accountid'

end
