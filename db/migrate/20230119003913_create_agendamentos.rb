class CreateAgendamentos < ActiveRecord::Migration[7.0]
  def change
    create_table :agendamentos do |t|
      t.string :nome
      t.string :cpf
      t.string :medico
      t.string :especialidade
      t.date :data_consulta
      t.date :data_nascimento
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
