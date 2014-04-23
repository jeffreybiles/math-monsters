class Api::V1::MonstersController < ApiController
  def index
    respond_with Monster.all
  end

  def show
    respond_with Monster.find(params[:id])
  end

  def create
    respond_with Monster.create(monster_params)
  end

  def update
    @monster = Monster.find(params[:id])
    respond_with @monster.update_attributes(monster_params)
  end

  private

  def monster_params
    params.require(:monster).permit(:name, :level, :exp_to_next_level, :power, :max_hp, :defense, :species_id)
  end
end