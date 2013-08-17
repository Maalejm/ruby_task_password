class Password1 < ActiveRecord::Base
  require 'bcrypt'
  attr_accessible :encrypted_password, :salt
end
