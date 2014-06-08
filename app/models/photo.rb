require 'attachment_on_the_fly'

class Photo < ActiveRecord::Base
  belongs_to :item, touch: true

  has_attached_file :body
  validates_attachment_presence :body
  validates_attachment_content_type :body, :content_type => /\Aimage\/.*\Z/

  validates_presence_of :item

  def src_for_preview
    body.s_200_200 convert_options: "-auto-orient"
  end
end
