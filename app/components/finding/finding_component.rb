# frozen_string_literal: true

class Finding::FindingComponent < ViewComponent::Base
  attr_reader :finding

  def initialize(finding:)
    @finding = finding
  end

  def code?
    finding.example_code.present?
  end
end
