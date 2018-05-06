class User < ApplicationRecord
    validates_presence_of :email, :first_name, :last_name, :password
    validates_uniqueness_of :email

end
