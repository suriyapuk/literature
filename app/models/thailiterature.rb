class Thailiterature < ActiveRecord::Base
	mount_uploader :picture, PictureUploader
	mount_uploader :fileupload, LiteratureUploader
end
