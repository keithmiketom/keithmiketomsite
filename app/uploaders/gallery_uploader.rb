# encoding: utf-8

class GalleryUploader < CarrierWave::Uploader::Base

  storage :file

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
       'uploads/gallery/'
  end


   def extension_white_list
     %w(jpg jpeg gif png)
   end

  def filename 
     if original_filename 
       @name ||= Digest::MD5.hexdigest(Time.now.to_s)
       "#{@name}.#{file.extension}"
     end
  end

end
