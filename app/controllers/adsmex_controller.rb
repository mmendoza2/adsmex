class AdsmexController < ApplicationController


  def home
      @users = User.all
  end

  def productos
  end

  def qda
  end


  def nosotros
  end

  def contacto
  end

  def terminos
  end

  def instrucciones
    @actividades = Actividad.all
  end

  def places
    @micrositio = Micrositio.all

    respond_to do |format|
      if @micrositio.update(micrositio_params)
        format.html { redirect_to @micrositio, notice: 'Micrositio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @micrositio.errors, status: :unprocessable_entity }
      end
    end

  end






end