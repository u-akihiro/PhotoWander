class CreateRallies < ActiveRecord::Migration
  def change
    create_table :rallies do |t|
      t.string :title
      t.text :detail
      t.datetime :opening
      t.datetime :ending

      t.timestamps
    end
  end
end
