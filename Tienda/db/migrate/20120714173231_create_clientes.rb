class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :name
      t.string :apellido
      t.string :num_tarjeta

      t.timestamps
    end
  end
end
