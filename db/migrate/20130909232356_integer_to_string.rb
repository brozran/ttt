class IntegerToString < ActiveRecord::Migration
  def change
      change_column :games, :s1, :string
      change_column :games, :s2, :string
      change_column :games, :s3, :string
      change_column :games, :s4, :string
      change_column :games, :s5, :string
      change_column :games, :s6, :string
      change_column :games, :s7, :string
      change_column :games, :s8, :string
      change_column :games, :s9, :string
  end
end
