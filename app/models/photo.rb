class Photo < ActiveRecord::Base
  belongs_to :item

  has_attached_file :body
  validates_attachment_presence :body
  validates_attachment_content_type :body, :content_type => /\Aimage\/.*\Z/

  validates_presence_of :item
end
