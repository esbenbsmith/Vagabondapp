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
        :storage => :s3,
        :s3_credentials => Proc.new { |a| a.instance.s3_credentials },
        :path => "vbapp/:id/:style/avatar.:extension",
        :default_url => "https://s3.amazonaws.com/vbapp/defaults/default_avatar.jpg"

 	validates_attachment :avatar, :presence => true,
        :content_type => { :content_type => ["image/jpg", "image/jpeg", "image/gif", "image/png"] },
        :size => { :in => 0..10000.kilobytes }

    def s3_credentials
     { :bucket => ENV['S3_BUCKET'], :access_key_id => ENV['S3_PUBLIC_KEY'], :secret_access_key => ENV['S3_SECRET'] }
    end

end
