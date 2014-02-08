class CreateCheckpoints < ActiveRecord::Migration
  def change
    create_table :checkpoints do |t|
      t.string :ucode
      t.string :name
      t.decimal :lat
      t.decimal :lng
      t.integer :radius

      t.timestamps
    end
  end
end
