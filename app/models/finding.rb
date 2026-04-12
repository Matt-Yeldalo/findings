class Finding < ApplicationRecord
  FORM_FIELDS = %w[title description example_code source_type source_name source_url category
                   tags].freeze
  belongs_to :user
  validates :title, presence: true
  validates :source_type,
            inclusion: { in: %w[book article video other], message: "%{value} is not a valid source type" }, allow_nil: true
end
