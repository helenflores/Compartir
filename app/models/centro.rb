class Centro < ActiveRecord::Base
	set_primary_keys :nombre,:sector
	validates_presence_of :nombre,:sector
end
