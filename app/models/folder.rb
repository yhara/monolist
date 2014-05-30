class Folder < ActiveRecord::Base
  has_many :items

  has_ancestry
  acts_as_taggable

  def self.root
    Folder.roots.first
  end

#  scope :empties, ->{ 
#    joins('LEFT OUTER JOIN items ON items.folder_id = folders.id')
#    .where('items.id IS NULL')
#    .where('folders.id != ?', Folder.root.id)
#  }

  def root?
    parent_id.nil?
  end

  def vname
    "@#{name}"
  end

  def active_and_removed_items
    items.partition{|x| x.removed_on.nil?}
  end

  def n_active_items
    if root?
      Item.where(removed_on: nil).count
    else
      ids = [self.id] + descendant_ids
      Item.where(removed_on: nil, folder_id: ids).count
    end
  end
end
