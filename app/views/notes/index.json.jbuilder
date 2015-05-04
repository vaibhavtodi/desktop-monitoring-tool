json.array!(@notes) do |note|
  json.extract! note, :id, :title, :text, :starred
  json.url note_url(note, format: :json)
end
