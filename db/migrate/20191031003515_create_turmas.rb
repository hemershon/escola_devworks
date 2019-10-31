class CreateTurmas < ActiveRecord::Migration[5.2]
  def change
    create_table :turmas do |t|
      t.string :turma
      t.string :turno
      t.string :materia
      t.string :aluno
      t.string :professor

      t.timestamps
    end
  end
end
