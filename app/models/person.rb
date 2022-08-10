# email:string
# password_digest:string
#
# password:string virtual
# password_confirmation:string virtual

class Person < ApplicationRecord
    has_secure_password

    validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, massage: "must be a valid email address" }
end
