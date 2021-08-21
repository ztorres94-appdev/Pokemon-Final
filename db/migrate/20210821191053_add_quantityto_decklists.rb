class AddQuantitytoDecklists < ActiveRecord::Migration[6.0]
  def change

    
    add_column :decklists , :quantity, :integer
  end
end
