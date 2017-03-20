class User < ActiveRecord::Base
  has_secure_password

   validates :password, :password_confirmation, presence: true
   validates :email, uniqueness: {case_sensitive: false}
   validates :email, uniqueness: true

end
