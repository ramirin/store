class CreateVariantes < ActiveRecord::Migration
  def change
    create_table :variantes do |t|
      t.string :color
      t.string :tamano
      t.integer :product_id
      t.timestamps
    end
  end
end
