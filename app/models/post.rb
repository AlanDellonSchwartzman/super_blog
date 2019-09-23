class Post < ApplicationRecord
  belongs_to :user
  has_many :commentary
  has_one_attached :img_post
  acts_as_paranoid
  
  accepts_nested_attributes_for :commentary, allow_destroy: true
  
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |post|
        csv << post.attributes.values_at(*column_names)
      end
    end
  end
end