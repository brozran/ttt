class AddColumnToGames < ActiveRecord::Migration
  def change
    add_column :games, :gamestatus, :string
  end
end
