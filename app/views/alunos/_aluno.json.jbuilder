json.extract! aluno, :id, :nome, :idade, :turma_id, :materia_id, :professor_id, :created_at, :updated_at
json.url aluno_url(aluno, format: :json)
