class User < ActiveRecord::Base

	has_many :posts, dependent: :destroy
	belongs_to :city
	has_secure_password

	validates :password,
		presence: true,
		length: { minimum: 6},
		on: :create

	validates :email,
		presence: true,
		uniqueness: true,
		format: {
			with: /@/,
			message: "Please enter a valid email"
		}

end
