class User < ApplicationRecord
    has_many :type_spends
    has_many :cost_centers
    has_many :general_spends
	has_many :incomes
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
