class Contrato < ApplicationRecord
  belongs_to :cliente
  belongs_to :servico

  validates :dataInicio, presence: true
  validate :data_valida

  def data_valida
    if data.present? && data < Time.zone.today
      errors.add(:data, " não pode ser uma data no passado")
    end
  end
end
