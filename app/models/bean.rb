class Bean < ApplicationRecord
	validates :name, presence: true, length: {maximum: 20}
	# mount_uploader :picture, PictureUploader
end
