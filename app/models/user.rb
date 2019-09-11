class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
    has_many :commentary
    has_many :post
    acts_as_paranoid
    
    rails_admin do
    configure :user do
      label 'Post criado por : '
    end
  end
         
end
