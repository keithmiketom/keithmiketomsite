# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base
  storage :file
  
  def extension_white_list
    %w(png gif jpg jpeg)
  end
  
  def store_dir
    'uploads/illustrations/'
  end
  
  def filename 
    if original_filename 
      @name ||= Digest::MD5.hexdigest(Time.now.to_s)
      "#{@name}.#{file.extension}"
    end
  end
end
