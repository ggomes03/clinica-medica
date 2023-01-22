class Agendamento < ApplicationRecord
  belongs_to :user

  validates :nome, presence: true   
  validates :medico, presence: true   
  validates :cpf, presence: true, length: {minimum:11, maximum:11}
  validates :especialidade, presence: true   
  validates :data_consulta, presence: true   
  validates :data_nascimento, presence: true   
  

end
