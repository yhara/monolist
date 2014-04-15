class Folder < ActiveRecord::Base
  has_ancestry

  def self.root
    Folder.first
  end

  def root?
    parent_id.nil?
  end
end
