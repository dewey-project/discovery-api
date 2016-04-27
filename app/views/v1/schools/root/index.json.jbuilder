json.data @schools do |school|
  json.id school.id
  json.name school.name
  json.apiUrl school.api_url
end
