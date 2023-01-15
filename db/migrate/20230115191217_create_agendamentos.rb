class CreateAgendamentos < ActiveRecord::Migration[7.0]
  def change
    create_table :agendamentos do |t|
      t.string :nome
      t.string :cpf
      t.date :data_nasc
      t.string :especialidade
      t.string :medico
      t.date :data_cons

      t.timestamps
    end
  end
end
