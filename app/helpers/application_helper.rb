module ApplicationHelper

	def mostrar_imagen nombre, tamanyo
		image_tag nombre, :size=>tamanyo
	end

	def boton nombre, path, clase
		button_to nombre, path, :class=> clase
	end

end
