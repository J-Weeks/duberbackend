class WalkersController < ApplicationController
  before_action :set_walker, only: [:show, :update, :destroy]

  # GET /walkers
  # GET /walkers.json
  def index
    @walkers = Walker.all

    render json: @walkers
  end

  # GET /walkers/1
  # GET /walkers/1.json
  def show
    render json: @walker
  end

  # POST /walkers
  # POST /walkers.json
  def create
    @walker = Walker.new(walker_params)

    if @walker.save
      render json: @walker, status: :created, location: @walker
    else
      render json: @walker.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /walkers/1
  # PATCH/PUT /walkers/1.json
  def update
    @walker = Walker.find(params[:id])

    if @walker.update(walker_params)
      head :no_content
    else
      render json: @walker.errors, status: :unprocessable_entity
    end
  end

  # DELETE /walkers/1
  # DELETE /walkers/1.json
  def destroy
    @walker.destroy

    head :no_content
  end

  private

    def set_walker
      @walker = Walker.find(params[:id])
    end

    def walker_params
      params.require(:walker).permit(:email, :password, :address, :first_name, :last_name, :description, :url, :rating)
    end
end
