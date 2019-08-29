class Post < ApplicationRecord
  belongs_to :user
  has_many :commentary
  
  accepts_nested_attributes_for :commentary, allow_destroy: true
  
  rails_admin do
    configure :user do
      label 'Post created by : '
    end
  end
end
