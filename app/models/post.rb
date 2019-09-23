class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :commentary
  
  has_one_attached :img_post
  acts_as_paranoid
  
  accepts_nested_attributes_for :commentary, allow_destroy: true
  
end