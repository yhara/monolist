class Photo < ActiveRecord::Base
  belongs_to :item, touch: true

  has_attached_file :body,
    styles: { :thumb => "200x200>", },
    convert_options: { :thumb => "-quality 75 -strip" }
  validates_attachment_presence :body
  validates_attachment_content_type :body, :content_type => /\Aimage\/.*\Z/

  validates_presence_of :item
end
