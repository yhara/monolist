class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :folder_id
      t.string :name
      t.text :note

      t.timestamps
    end
  end
end
