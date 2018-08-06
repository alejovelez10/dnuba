class User < ApplicationRecord
    has_many :type_spends
    has_many :cost_centers
    has_many :general_spends
	has_many :incomes
	has_many :post
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable
end
