class CreateCompras < ActiveRecord::Migration[7.0]
  def change
    create_table :compras do |t|
      t.string :nombre
      t.decimal :total

      t.timestamps
    end
  end
end
