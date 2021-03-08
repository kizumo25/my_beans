class Bean < ApplicationRecord
	validates :name, presence: true, length: {maximum: 20}
	mount_uploader :picture, PictureUploader
	validate :picture_size

	private

		def picture_size
			if picture.size > 5.megabytes
				errors.add(:picture, "should be less than 5MB")
			end
		end
end
