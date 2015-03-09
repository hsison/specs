class User < ActiveRecord::Base
  #TODO : Use bcrypt to store hashed passwords and authenticate users

validates :name, presence: true
validates :email, format: {with: /[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+/}
validates :password, length: {minimum: 6}

  include BCrypt
  def password
    @password || Password.new(password_hash)
  end

  def password=( new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate(password)
    self.password == password
  end

end
