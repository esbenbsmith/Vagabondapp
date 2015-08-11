class User < ActiveRecord::Base

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
