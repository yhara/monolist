class Item < ActiveRecord::Base
  belongs_to :folder
  has_many :photos

  validates_presence_of :folder

  def has_note?
    note && !note.empty?
  end
end
