class CreateClienteProductos < ActiveRecord::Migration
  def change
    create_table :cliente_productos do |t|
      t.integer :cod

      t.timestamps
    end
  end
end
