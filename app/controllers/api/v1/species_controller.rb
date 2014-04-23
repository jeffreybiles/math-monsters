class Api::V1::SpeciesController < ApiController
  def index
    respond_with Species.all
  end

  def show
    respond_with Species.find(params[:id])
  end
end