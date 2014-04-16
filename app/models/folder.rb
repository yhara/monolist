class Folder < ActiveRecord::Base
  has_many :items

  has_ancestry

  def self.root
    Folder.first
  end

  def root?
    parent_id.nil?
  end

  def vname
    "@#{name}"
  end

  def n_items
    if root?
      Item.where(removed_on: nil).count
    else
      ids = [self.id] + descendant_ids
      Item.where(removed_on: nil, folder_id: ids).count
    end
  end
end
