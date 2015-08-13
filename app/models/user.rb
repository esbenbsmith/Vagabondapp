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

	has_attached_file :avatar,
        :styles => { :medium => "150x150>", :thumb => "44x44>" },
        :default_url => "/images/:style/missing.png"

 	validates_attachment :avatar, :presence => true,
        :content_type => { :content_type => ["image/jpg", "image/jpeg", "image/gif", "image/png"] },
        :size => { :in => 0..10000.kilobytes }

end
