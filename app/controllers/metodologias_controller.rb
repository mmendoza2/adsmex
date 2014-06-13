class MetodologiasController < ApplicationController
  before_action :set_metodologia, only: [:show, :edit, :update, :destroy]

  # GET /metodologias
  # GET /metodologias.json
  def index
    @metodologias = Metodologia.all
  end

  # GET /metodologias/1
  # GET /metodologias/1.json
  def show
    @metodologia = Metodologia.friendly.find(params[:id])
  end

  # GET /metodologias/new
  def new
    @metodologia = Metodologia.new
  end

  # GET /metodologias/1/edit
  def edit
  end

  # POST /metodologias
  # POST /metodologias.json
  def create
    @metodologia = Metodologia.new(metodologia_params)

    respond_to do |format|
      if @metodologia.save
        format.html { redirect_to @metodologia, notice: 'Metodologia was successfully created.' }
        format.json { render action: 'show', status: :created, location: @metodologia }
      else
        format.html { render action: 'new' }
        format.json { render json: @metodologia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /metodologias/1
  # PATCH/PUT /metodologias/1.json
  def update
    respond_to do |format|
      if @metodologia.update(metodologia_params)
        format.html { redirect_to @metodologia, notice: 'Metodologia was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @metodologia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /metodologias/1
  # DELETE /metodologias/1.json
  def destroy
    @metodologia.destroy
    respond_to do |format|
      format.html { redirect_to metodologias_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metodologia
      @metodologia = Metodologia.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def metodologia_params
      params.require(:metodologia).permit(:name, :descripcion)
    end
end
