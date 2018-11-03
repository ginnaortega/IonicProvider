class HuecosController < ApplicationController
  before_action :set_hueco, only: [:show, :edit, :update, :destroy]

  # GET /huecos
  # GET /huecos.json
  def index
    @huecos = Hueco.all
  end

  # GET /huecos/1
  # GET /huecos/1.json
  def show
  end

  # GET /huecos/new
  def new
    @hueco = Hueco.new
  end

  # GET /huecos/1/edit
  def edit
  end

  # POST /huecos
  # POST /huecos.json
  def create
    @hueco = Hueco.new(hueco_params)

    respond_to do |format|
      if @hueco.save
        format.html { redirect_to @hueco, notice: 'Hueco was successfully created.' }
        format.json { render :show, status: :created, location: @hueco }
      else
        format.html { render :new }
        format.json { render json: @hueco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /huecos/1
  # PATCH/PUT /huecos/1.json
  def update
    respond_to do |format|
      if @hueco.update(hueco_params)
        format.html { redirect_to @hueco, notice: 'Hueco was successfully updated.' }
        format.json { render :show, status: :ok, location: @hueco }
      else
        format.html { render :edit }
        format.json { render json: @hueco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /huecos/1
  # DELETE /huecos/1.json
  def destroy
    @hueco.destroy
    respond_to do |format|
      format.html { redirect_to huecos_url, notice: 'Hueco was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hueco
      @hueco = Hueco.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hueco_params
      params.require(:hueco).permit(:localidad, :direccion, :tamanio, :ranking)
    end
end
