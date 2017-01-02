class Contact < SalesforceModel
	self.table_name =  ENV['HEROKUCONNECT_SCHEMA'] + '.contact'
	# self.primary_key = :sfid
  belongs_to :account, :primary_key => 'sfid', :foreign_key => 'accountid'
  has_many :cases, :primary_key => 'sfid', :foreign_key => 'contactid'
  
end
