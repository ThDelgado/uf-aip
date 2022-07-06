class UfsController < ApplicationController
  before_action :set_uf, only: %i[ show update destroy ]

  # GET /ufs
  def index
    @ufs = Uf.order('created_at DESC')

    render json: @ufs
  end

  # GET /ufs/1
  def show 
    @ufs = Uf.find(params[:date)
    render json: @uf
  end

  # POST /ufs
  def create
    @uf = Uf.new(uf_params)

    if @uf.save
      render json: @uf, status: :created, location: @uf
    else
      render json: @uf.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ufs/1
  def update
    if @uf.update(uf_params)
      render json: @uf
    else
      render json: @uf.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ufs/1
  def destroy
    @uf.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uf
      @uf = Uf.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def uf_params
      params.require(:uf).permit(:date, :uf)
    end
end
