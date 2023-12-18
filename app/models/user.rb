# email:string
# password_digest:string
# password:string virtual
# password_confirmation:string virtual
class User < ApplicationRecord
  has_secure_password # bcrypt gem method to encrypt password and store in password_digest column
end
