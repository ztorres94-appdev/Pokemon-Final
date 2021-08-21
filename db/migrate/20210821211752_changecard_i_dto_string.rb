class ChangecardIDtoString < ActiveRecord::Migration[6.0]
  def change

remove_column :decklists, :card_id

add_column :decklists, :card_id, :string

  end
end
