class SubproductosController < ApplicationController
  before_action :set_subproducto, only: [:show, :edit, :update, :destroy]

  # GET /subproductos
  # GET /subproductos.json
  def index
    @subproductos = Subproducto.all
  end

  # GET /subproductos/1
  # GET /subproductos/1.json
  def show
  end

  # GET /subproductos/new
  def new
    @subproducto = Subproducto.new
  end

  # GET /subproductos/1/edit
  def edit
  end

  # POST /subproductos
  # POST /subproductos.json
  def create
    @subproducto = Subproducto.new(subproducto_params)

    respond_to do |format|
      if @subproducto.save
        format.html { redirect_to @subproducto, notice: 'Subproducto was successfully created.' }
        format.json { render action: 'show', status: :created, location: @subproducto }
      else
        format.html { render action: 'new' }
        format.json { render json: @subproducto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subproductos/1
  # PATCH/PUT /subproductos/1.json
  def update
    respond_to do |format|
      if @subproducto.update(subproducto_params)
        format.html { redirect_to @subproducto, notice: 'Subproducto was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @subproducto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subproductos/1
  # DELETE /subproductos/1.json
  def destroy
    @subproducto.destroy
    respond_to do |format|
      format.html { redirect_to subproductos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subproducto
      @subproducto = Subproducto.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subproducto_params
      params.require(:subproducto).permit(:name, :descripcion, :producto_id, :photo)
    end
end
