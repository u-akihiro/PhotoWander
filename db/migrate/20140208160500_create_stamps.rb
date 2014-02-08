class CreateStamps < ActiveRecord::Migration
  def change
    create_table :stamps do |t|
      t.string :file_name
      t.string :file_type
      t.integer :file_size
      t.integer :file_width
      t.integer :file_height
      t.integer :checkpoint_id
      t.integer :entry_card_id

      t.timestamps
    end
  end
end
