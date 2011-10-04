class User < ActiveRecord::Base
   
  	has_many :authentications

  	has_many :entrants
	has_many :comps, :through => :entrants  


  # Include default devise modules. Others available are:
  # :token_authenticatable, :lockable, :timeoutable and :activatable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation


  def apply_omniauth(omniauth)  
    authentications.build(:provider => omniauth['provider'],:uid => omniauth['uid'])  
  end

  def password_required?  
    (authentications.empty? || !password.blank?) && super  
  end  
end
