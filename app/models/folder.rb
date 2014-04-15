class Folder < ActiveRecord::Base
  has_ancestry

  def self.root
    @root ||= Folder.first
  end
end
