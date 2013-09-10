class AddMoveColumnToGame < ActiveRecord::Migration
  def change
    add_column :games , :move, :integer
  end
end
