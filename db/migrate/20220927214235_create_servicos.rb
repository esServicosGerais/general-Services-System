class CreateServicos < ActiveRecord::Migration[7.0]
  def change
    create_table :servicos do |t|
      t.string :nome
      t.string :descricao
      t.float :valor
      t.references :trabalhador_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
