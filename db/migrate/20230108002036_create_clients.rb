class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :nome
      t.string :pass
      t.string :email

      t.timestamps
    end
  end
end
