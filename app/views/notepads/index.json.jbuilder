json.array!(@notepads) do |notepad|
  json.extract! notepad, :id, :name, :content
  json.url notepad_url(notepad, format: :json)
end
