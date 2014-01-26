class Image < ActiveRecord::Base
  attr_accessor :width, :height
  
  has_attached_file :file, :styles => lambda { |a|
    { :small => "#{a.instance.width}x#{a.instance.height}#" }
  }
end
