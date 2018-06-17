class Item < ActiveRecord::Base
  belongs_to :folder, touch: true
  has_many :photos

  acts_as_taggable

  validates_presence_of :folder

  before_create do
    self.added_on ||= Time.zone.now.to_date
  end

  def has_note?
    note && !note.empty?
  end

  def vname
    name || '(no name)'
  end
end
