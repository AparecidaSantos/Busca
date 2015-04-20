class CreateVeiculos < ActiveRecord::Migration
  def change
    create_table :veiculos do |t|
      t.references :empresa, index: true, foreign_key: true
      t.references :filial, index: true, foreign_key: true
      t.string :placa
      t.string :ano
      t.string :numero
      t.string :renavam

      t.timestamps null: false
    end
  end
end
