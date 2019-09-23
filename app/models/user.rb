class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
    has_many :commentary
    has_many :post
    acts_as_paranoid
    
    def users_fields
      [self.name, self.nickname, self.admin].compact.join(', ')
    end
    
    RailsAdmin.config do |config|
      config.model User do
        list do
          # virtual field
          configure :users_fields do
            # any configuration
          end
          fields :name, :nickname, :admin
        end
      end
    end
    
    
         
end
