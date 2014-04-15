class Folder < ActiveRecord::Base
  has_ancestry

  def self.root
    @root ||= Folder.find_by(name: '')
  end
end
