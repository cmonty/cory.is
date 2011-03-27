class User < ActiveRecord::Base
  attr_accessor :new_password, :new_password_confirmation
  
  validates_confirmation_of :new_password
  validates_presence_of :name, :email
   
  before_save :hash_password
  
  def hash_password
    time = Time.now.to_s
    self.password = Digest::SHA512.hexdigest("#{@new_password}:#{time}")
  end
  
  def self.authenticate(email, password)
    if user = find_by_email(email)
      if user.authenticated?(password)
        return user
      end
    end
    
    nil
  end
  
  def authenticated?(password)
    self.password == Digest::SHA512.hexdigest("#{password}:#{self.created_at}")
  end

end
