class CreateAlunos < ActiveRecord::Migration[5.2]
  def change
    create_table :alunos do |t|
      t.string :nome
      t.date :idade
      t.references :turma, foreign_key: true
      t.references :materia, foreign_key: true
      t.references :professor, foreign_key: true

      t.timestamps
    end
  end
end
