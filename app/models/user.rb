class User < ActiveRecord::Base
  attr_accessor :new_password, :new_password_confirmation
  
  validates_confirmation_of :new_password
  validates_presence_of :name, :email 
  before_save :hash_password
  
  def hash_password
    time = Time.now.to_s
    self.password = Digest::SHA512.hexdigest("#{@new_password}:#{time}")
  end 

end
