class Finding < ApplicationRecord
  FORM_FIELDS = %w[title description example_code source_type source_name source_url category
                   tags].freeze
  belongs_to :user
end
