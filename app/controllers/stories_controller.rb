class StoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index , :show]
  before_action :find_storie, only: [ :edit, :update, :destroy ]

  def index
    @stories = Storie.all
    @storie = policy_scope(Storie)
    @stories = Storie.order('created_at desc')

    @q = Storie.ransack(params[:q])
    @stories = @q.result(distinct: true)

  end

  def show
    @storie = Storie.friendly.find(params[:id])
    authorize @storie
  end

  def new
    @storie = Storie.new
    authorize @storie
  end

  def create
    @storie = Storie.new(storie_params)
    @storie.user = current_user
    authorize @storie
    @storie.save
    redirect_to story_path(@storie)
  end

  def edit
    find_storie
  end

  def update
    find_storie
    @storie.update(storie_params)
    redirect_to story_path(@storie)
  end

  def destroy
    find_storie
    @storie.destroy
    redirect_to stories_path
  end


  private

  def storie_params
    params.require(:storie).permit(:name, :description, :first_header, :first_description, :second_header, :second_description, :third_header, :third_description, :fourth_header, :fourth_description, :first_number, :first_number_text, :second_number, :second_number_text, :third_number, :third_number_text, :fourth_number, :fourth_number_text, :fifth_number, :fifth_number_text, :six_number, :six_number_text, :link, photos: [] )
  end

  def find_storie
    @storie = Storie.friendly.find(params[:id])
    authorize @storie
  end

end
