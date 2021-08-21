class CreateDecklists < ActiveRecord::Migration[6.0]
  def change
    create_table :decklists do |t|
      t.integer :user_id
      t.integer :card_id
     

      t.timestamps
    end
  end
end
