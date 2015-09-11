class Challenge < ActiveRecord::Base
	def list=(value)
  		list_to_input = "{" + value + "}"
  		self[:list] = list_to_input
	end

	belongs_to :user
	# mount_uploader :image, ImageUploader
end