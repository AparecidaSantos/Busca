class CreateFiliais < ActiveRecord::Migration
  def change
    create_table :filiais do |t|
      t.string :nome
      t.string :endereco
      t.string :cnpj
      t.references :empresa, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
