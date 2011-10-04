class Entrant < ActiveRecord::Base

	belongs_to :comp
	belongs_to :user

	attr_accessible :answer, :user_id, :comp_id

	validates :answer, :presence => true
       validates :comp_id, :presence => true
	validates :user_id, :presence => true

end
