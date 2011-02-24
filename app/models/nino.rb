class Nino < ActiveRecord::Base
	set_primary_key :codigo
	validates_uniqueness_of :codigo
	validates_presence_of :codigo
end
