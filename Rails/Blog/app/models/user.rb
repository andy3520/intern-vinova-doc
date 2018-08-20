class User < ApplicationRecord
  attr_accessor :email
  before_save { self.email = email.downcase }
  validates :email,
            presence:       { message: ': Please enter email' },
            uniqueness:     { message: ': This email has already been registered' },
            format:         { with: /\A.+@.+\z/,
                              message: ': Invalid email address' }
  validates :pass,
            presence:       { message: ': Please enter password' },
            length:         { minimum: 8,
                              message: ': Must be at least 8 characters' },
            confirmation:   { message: ': Password not match' }
end
