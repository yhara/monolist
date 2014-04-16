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
end
