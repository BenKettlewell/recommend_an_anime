json.array!(@answers) do |answer|
  json.extract! answer, :id, :answer, :specific_1, :specific_2
  json.url answer_url(answer, format: :json)
end
