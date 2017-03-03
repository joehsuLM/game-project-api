# frozen_string_literal:true
class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.references :player_x, null: false
      t.references :player_o
      t.boolean :over, null: false, default: false
      t.string :cells, array: true
    end
  end
end