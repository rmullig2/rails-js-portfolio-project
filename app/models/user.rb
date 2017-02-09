class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # Removed the following default modules: :trackable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
