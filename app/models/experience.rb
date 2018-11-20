class Experience < ApplicationRecord
	mount_uploader :image1, Imagen1Uploader
	mount_uploader :image2, Imagen2Uploader
	mount_uploader :image3, Imagen3Uploader
	mount_uploader :image4, Imagen4Uploader
end
