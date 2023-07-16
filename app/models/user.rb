class User < ApplicationRecord
  # Include default devise modules. Others available are:
  enum :role, [:normal_user, :author, :admin]
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
        has_many :posts
end
