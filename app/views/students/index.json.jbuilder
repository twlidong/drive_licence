json.array!(@students) do |student|
  json.extract! student, :name, :age, :sex, :phone, :course
  json.url student_url(student, format: :json)
end