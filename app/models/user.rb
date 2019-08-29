class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
    has_many :commentary
    has_many :post
    
    rails_admin do
    configure :player do
      label 'Post criado por : '
    end
  end
         
end
