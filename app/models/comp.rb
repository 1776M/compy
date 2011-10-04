class Comp < ActiveRecord::Base

	attr_accessible :prize, :question, :answer, :answer_one, :answer_two, :answer_three

	has_many :entrants
	has_many :users, :through => :entrants       

	validates :prize, :presence => true
 	validates :question, :presence => true
 	validates :answer, :presence => true
 	validates :answer_one, :presence => true
	validates :answer_two, :presence => true
       validates :answer_three, :presence => true
	validates :user_id, :presence => true


end
