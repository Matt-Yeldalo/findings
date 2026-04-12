class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  before_action :tags

  private

  def tags
    @tags ||= Finding.distinct.pluck(:tags).flatten.uniq.sort
  end
end
