class CreateProfessors < ActiveRecord::Migration[5.2]
  def change
    create_table :professors do |t|
      t.string :nome
      t.string :materia
      t.datetime :horario
      t.string :turma

      t.timestamps
    end
  end
end
