class CreatePedidos < ActiveRecord::Migration[7.0]
  def change
    create_table :pedidos do |t|
      t.string :nombre
      t.string :direccion
      t.string :instrumento

      t.timestamps
    end
  end
end
