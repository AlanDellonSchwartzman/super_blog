class Category < ApplicationRecord
    has_many :posts
    
    acts_as_paranoid
end
