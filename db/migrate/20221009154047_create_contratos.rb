class CreateContratos < ActiveRecord::Migration[7.0]
  def change
    create_table :contratos do |t|
      t.date :dataInicio
      t.date :dataTermino
      t.float :duracaoTotalServico
      t.float :valorTotal
      t.integer :situacao
      t.references :cliente, null: false, foreign_key: true
      t.references :servico, null: false, foreign_key: true

      t.timestamps
    end
  end
end
