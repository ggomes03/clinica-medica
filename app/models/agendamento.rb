class Agendamento < ApplicationRecord
  belongs_to :user

  validates :nome, presence: true   
  validates :medico, presence: true   
  validates :cpf, presence: true, length: {minimum:14, maximum:14}
  validates :especialidade, presence: true   
  validates :data_consulta, presence: true   
  validates :data_nascimento, presence: true   
  

end
