class Item < ActiveRecord::Base
  belongs_to :folder, touch: true
  has_many :photos

  acts_as_taggable

  validates_presence_of :folder

  def has_note?
    note && !note.empty?
  end
end
