class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.string :nombre
      t.integer :precio
      t.string :imagen

      t.timestamps
    end
  end
end
