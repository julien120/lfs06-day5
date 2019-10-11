require 'bundler/setup'
Bundler.require

if development?
   ActiveRecord::Base.establish_connection('sqlite3:db/development.db')
end


class History < ActiveRecord::Base
end

class User < ActiveRecord::Base
  has_secure_password
  has_many :posts

end

class Category < ActiveRecord::Base
  has_many :posts
end

class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  #validates :body,
    #presence: true
end