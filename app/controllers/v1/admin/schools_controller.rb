class V1::Admin::SchoolsController < ApplicationController
  def create
    @school = School.new(allowed_params)
    if @school.save
      render @school, status: 200
    else
      render @school.errors, status: 422
    end
  end

  def destroy
    @school = School.find(params[:id])
    @school.destroy

    head 204
  end

  private

  def allowed_params
    params.require(:data).permit(:name, :api_url)
  end
end
