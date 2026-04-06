class FindingsController < ApplicationController
  def index
    @findings = Finding.all
  end

  def new
    @finding = Finding.new
  end
end
