class NepalsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_nepal, only: [:show, :update, :destroy]

  # GET /nepals
  # GET /nepals.json
  def index
    @nepals = Nepal.all

    render json: @nepals
  end

  # GET /nepals/1
  # GET /nepals/1.json
  def show
    render json: @nepal
  end

  # POST /nepals
  # POST /nepals.json
  def create
    @nepal = Nepal.new(nepal_params)

    if @nepal.save
      render json: @nepal, status: :created, location: @nepal
    else
      render json: @nepal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /nepals/1
  # PATCH/PUT /nepals/1.json
  def update
    @nepal = Nepal.find(params[:id])

    if @nepal.update(nepal_params)
      head :no_content
    else
      render json: @nepal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /nepals/1
  # DELETE /nepals/1.json
  def destroy
    @nepal.destroy

    head :no_content
  end

  private

    def set_nepal
      @nepal = Nepal.find(params[:id])
    end

    def nepal_params
      params.require(:nepal).permit(:district,:city,:code)
    end
end
