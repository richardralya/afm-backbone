class User < ApplicationRecord
  belongs_to :org
  
  has_many :topics
  has_many :items
  has_many :ratings
  
  validates :encrypted_password,  :presence => true, 
                                  #:confirmation => true,
                                  :length => { :minimum => 8, :maximum => 40}
                                  
  def has_password?(submitted_password)
    encrypted_password == encrypt(submitted_password)
  end
  
  def self.authenticate( email, submitted_password)
    user = find_by_email(email)
    return nil if user.nil?
    return user if user.has_password?(submitted_password)    
  end
    
  
  before_save :encrypt_password
    
  private
  
  def encrypt_password
    self.salt = make_salt if new_record?
    self.encrypted_password = encrypt(encrypted_password)
  end
  
  def encrypt(string)
    secure_hash("#{salt}--#{string}")
  end
  
  def make_salt
    secure_hash("#{Time.now.utc}--#{encrypted_password}")
  end
  
  def secure_hash(string)
    Digest::SHA2.hexdigest(string)
  end
  
end
