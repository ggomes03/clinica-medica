json.extract! agendamento, :id, :nome, :cpf, :medico, :especialidade, :data_consulta, :data_nascimento, :user_id, :created_at, :updated_at
json.url agendamento_url(agendamento, format: :json)
