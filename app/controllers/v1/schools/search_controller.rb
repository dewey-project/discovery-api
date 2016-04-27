class V1::Schools::SearchController < ApplicationController
  def index
    @schools = School.search(params[:term])
  end
end
