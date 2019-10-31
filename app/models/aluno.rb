class Aluno < ApplicationRecord
  belongs_to :turma
  belongs_to :materia
  belongs_to :professor
end
