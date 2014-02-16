class AddRallyIdToCheckpoints < ActiveRecord::Migration
  def change
    add_column :checkpoints, :rally_id, :integer
  end
end
