class CursosusuarioController < ApplicationController
  before_action :set_cursousuario, only: [:show, :edit, :update, :destroy]


  def show
    @cursousuario = Cursousuario.find(params[:id])
  end

  def index
    @cursosusuario = Cursousuario.all
  end

  def edit
    @cursosusuario = Cursousuario.all
    @cursousuario = Cursousuario.find(params[:id])
  end

  def update
    respond_to do |format|
      if @cursousuario.update(cursousuario_params)
        format.html { redirect_to :back, notice: 'cursousuario was successfully updated.' }
        format.json { head :no_content }
        format.js
      else
        format.html { render action: 'edit' }
        format.json { render json: @cursousuario.errors, status: :unprocessable_entity }
      end
    end
  end


  def set_cursousuario
    @cursousuario = Cursousuario.find(params[:id])
  end

  def cursousuario_params
    params.require(:cursousuario).permit(:nivel12014, :niveln2014)
  end
end
