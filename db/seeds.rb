user = User.find_or_create_by!(email: "admin@admin") do |u|
  u.password = "password"
end

# create_table "findings", force: :cascade do |t|
#   t.bigint "user_id", null: false
#   t.string "title", null: false
#   t.text "description"
#   t.text "example_code"
#   t.string "source_type"
#   t.string "source_name"
#   t.text "source_url"
#   t.string "category"
#   t.string "tags", default: [], array: true
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
#   t.index ["tags"], name: "index_findings_on_tags", using: :gin
#   t.index ["user_id"], name: "index_findings_on_user_id"
# end
Finding.find_or_create_by!(title: "The Law of Demeter", user:) do |f|
  f.description = "An object should only talk to its immediate neighbours..."
  f.source_type = "book"
  f.source_name = "Pragmatic Programmer"
  f.category = "Design Patterns"
  f.tags = ["design patterns", "object-oriented programming"]
end

Finding.find_or_create_by!(title: "The Single Responsibility Principle", user:) do |f|
  f.description = "A class should have only one reason to change..."
  f.source_type = "book"
  f.example_code =
    <<~CODE
      class User
        def initialize(name, email)
          @name = name
          @email = email
        end

        def send_email(message)
          # code to send email
        end
      end
    CODE
  f.source_url = "https://en.wikipedia.org/wiki/Single_responsibility_principle"
  f.source_name = "Clean Code"
  f.category = "Design Principles"
  f.tags = ["design principles", "object-oriented programming"]
end
