class CreateTrabalhadors < ActiveRecord::Migration[7.0]
  def change
    create_table :trabalhadors do |t|
      t.string :nome
      t.string :cpf/cnpj
      t.string :telefone
      t.string :email
      t.date :dataNascimento
      t.string :profissão
      t.references :endereco, null: false, foreign_key: true

      t.timestamps
    end
  end
end
