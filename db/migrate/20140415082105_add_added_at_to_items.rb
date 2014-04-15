class AddAddedAtToItems < ActiveRecord::Migration
  def change
    add_column :items, :added_on, :date
    add_column :items, :removed_on, :date
  end
end
