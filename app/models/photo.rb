# class Photo < ActiveRecord::Base
#   has_attached_file :image, :styles => {:medium => "300x300>", :thumb => "100x100>"}
#
#   validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
#
#   belongs_to :listing
# end


class Photo < ActiveRecord::Base
  belongs_to :listing
  validates :image_file_name, :presence => true
  has_attached_file :image, :styles => { :medium => "600x600>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
