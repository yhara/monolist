class InstallPaperclip < ActiveRecord::Migration
  def self.up
    add_attachment :photos, :body
    remove_column :photos, :filepath
    remove_column :photos, :created_at
    remove_column :photos, :updated_at
  end

  def self.down
    remove_attachment :photos, :body
    add_column :photos, :filepath, :string
    add_column :photos, :created_at, :datetime
    add_column :photos, :updated_at, :datetime
  end
end
