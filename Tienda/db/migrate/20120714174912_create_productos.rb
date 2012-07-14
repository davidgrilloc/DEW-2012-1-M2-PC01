class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.integer :codigo
      t.string :descripcion
      t.integer :precio

      t.timestamps
    end
  end
end
