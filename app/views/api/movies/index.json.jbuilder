json.array! @movies.each do |movie|
  json.partial! "contacts.json.jbuilder", movie: movie
end