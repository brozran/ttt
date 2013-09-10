class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :s1
      t.integer :s2
      t.integer :s3
      t.integer :s4
      t.integer :s5
      t.integer :s6
      t.integer :s7
      t.integer :s8
      t.integer :s9
    end
  end
end
