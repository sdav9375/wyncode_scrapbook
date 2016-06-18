# encoding: utf-8

class AvatarUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  # storage :file

  #################
  #################
  # ENABLE WHEN YOU WANT AWS
  #################
  #################
  storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end


  # Create different versions of your uploaded files:
  version :thumb do
    resize_to_limit(50, 50)
  end

  version :medium do
    resize_to_limit(125, 125)
  end

  version :large do
    resize_to_limit(550, 550)
  end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  # def extension_white_list
  #   %w(jpg jpeg gif png)
  # end

  

end
