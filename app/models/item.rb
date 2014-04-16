class Item < ActiveRecord::Base
  belongs_to :folder
  has_many :photos
end
