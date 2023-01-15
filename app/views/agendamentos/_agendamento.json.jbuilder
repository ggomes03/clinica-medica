json.extract! agendamento, :id, :nome, :cpf, :data_nasc, :especialidade, :medico, :data_cons, :created_at, :updated_at
json.url agendamento_url(agendamento, format: :json)
