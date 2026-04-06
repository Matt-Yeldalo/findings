# create_table "findings", force: :cascade do |t|
#   t.integer "user_id", null: false
#   t.string "title", null: false
#   t.text "description"
#   t.text "example_code"
#   t.string "source_type"
#   t.string "source_name"
#   t.text "source_url"
#   t.string "category"
#   t.string "tags"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
#   t.index ["user_id"], name: "index_findings_on_user_id"
# end
class Finding < ApplicationRecord
  FORM_FIELDS = %w[title description example_code source_type source_name source_url category
                   tags].freeze
  # FORM_FIELDS = {
  #   text_fields: %w[description example_code source_url],
  #   string_fields: %w[title source_type source_name category tags]
  # }.freeze
end
