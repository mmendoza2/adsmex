class RelacionarchivosController < ApplicationController

  def create
    @archivo = Archivo.find(params[:relacionarchivos][:curso_id])
    respond_to do |format|
      format.html { redirect_to(:back) }
      format.js
    end

  end

  def destroy
    @archivo = Relacionarchivo.find(params[:id])
    respond_to do |format|
      format.html { redirect_to(:back) }
      format.js
    end

  end

end