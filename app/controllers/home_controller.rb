#encoding: utf-8
class HomeController < ApplicationController
  layout 'bootstrap', :except => :contacto


  def index
    @titulo = "Estamos en la principal"
    @array =["primero", "segundo", "tercero"]

  end

  def quienes_somos
      @titulo = "Estamos en quienes somos"
  end

  def localizacion
    @titulo = "Estamos en localizacion"

  end

  def servicios
    @titulo = "Estamos en sericios"

  end

  def contacto
      @titulo = 'Formulario de contacto'

      if request.post?
        #Enviar el correo electrónico
        begin
          if Email.micorreo(params).deliver and Email.enviar(params).deliver
              flash.now[:noticia] = 'Se ha enviado correctamente'
          end
        rescue
          flash.now[:error] = 'No se ha enviado'

        end
      end
     # if Email.recepcion.deliver
      #  flash.now[:noticia] = 'Se ha enviado correctamente'
      #else
      #  flash.now[:noticia] = 'No se ha enviado correctamente'
      #end
  end
  
end
