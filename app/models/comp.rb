class Comp < ActiveRecord::Base

	attr_accessible :prize, :question, :answer, :answer_one, :answer_two, :answer_three

       has_and_belongs_to_many :users, :join_table => 'users_comps'
       
	validates :prize, :presence => true
 	validates :question, :presence => true
 	validates :answer, :presence => true
 	validates :answer_one, :presence => true
	validates :answer_two, :presence => true
       validates :answer_three, :presence => true
	validates :user_id, :presence => true

end
