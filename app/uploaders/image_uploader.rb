class ImageUploader < CarrierWave::Uploader::Base
  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  include CarrierWave::MiniMagick

  storage :file
  # storage :fog

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_whitelist
    %w(jpg jpeg gif png)
  end

  version :thumb_index do 
    process resize_to_fill: [202, 150] 
  end 

  version :thumb_show do 
    process resize_to_fill: [600, 450] 
  end 

  version :thumb_new do 
    process resize_to_fill: [600, 450] 
  end 

  version :thumb_update do 
    process resize_to_fill: [600, 450] 
  end 

end
