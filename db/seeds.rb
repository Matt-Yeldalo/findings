user = User.find_or_create_by!(email: "admin@admin") do |u|
  u.password = "password"
end

Finding.find_or_create_by!(title: "The Law of Demeter", user:) do |f|
  f.description = "An object should only talk to its immediate neighbours..."
  f.source_type = "book"
  f.source_name = "Pragmatic Programmer"
  f.category = "Design Patterns"
  f.tags = "oop, design, coupling"
end
