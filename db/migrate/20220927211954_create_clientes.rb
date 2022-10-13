class CreateClientes < ActiveRecord::Migration[7.0]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :cpf
      t.string :telefone
      t.string :email
      t.date :dataNascimento
      t.string :cidade
      t.string :bairro
      t.string :logradouro
      t.string :cep
      t.string :complemento
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
