class DogsController < ApplicationController
  before_action :set_dog, only: [:show, :update, :destroy]

  # GET /dogs
  # GET /dogs.json
  def index
    @dogs = Dog.all

    render json: @dogs
  end

  # GET /dogs/1
  # GET /dogs/1.json
  def show
    render json: @dog
  end

  # POST /dogs
  # POST /dogs.json
  def create
    @dog = Dog.new(dog_params)

    if @dog.save
      render json: @dog, status: :created, location: @dog
    else
      render json: @dog.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dogs/1
  # PATCH/PUT /dogs/1.json
  def update
    @dog = Dog.find(params[:id])

    if @dog.update(dog_params)
      # head :no_content
      render json: @dog
    else
      render json: @dog.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dogs/1
  # DELETE /dogs/1.json
  def destroy
    @dog.destroy

    head :no_content
  end

  private

    def set_dog
      @dog = Dog.find(params[:id])
    end

    def dog_params
      params.permit(:name, :breed, :description, :size, :note, :url, :rating, :walker_id, :user_id)
    end
end
