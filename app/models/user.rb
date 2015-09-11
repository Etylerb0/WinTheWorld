class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	# mount_uploader :image, ImageUploader

	has_many :challenges

	
	validates :username, presence: true, uniqueness: true
	validates :email, presence: true, uniqueness: true
	
end
