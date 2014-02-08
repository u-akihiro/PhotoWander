class CreateEntryCards < ActiveRecord::Migration
  def change
    create_table :entry_cards do |t|
      t.boolean :finish_flag
      t.integer :user_id
      t.integer :rally_id

      t.timestamps
    end
  end
end
