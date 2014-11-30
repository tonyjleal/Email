module HomeHelper

	def enlace(nombre, path)
		link_to nombre, path
	end

	def menu_navegacion(opciones)
		html = '<ul class="nav nav-pills">'
		opciones.each do |nombre, accion|
			html += '<li role="presentation" class="">' + enlace(nombre, accion) + '</li>'
		end
		html += '</ul>'
	end

	def hay_banner?
		if content_for?(:imagen)
			return true
		end
	end
end
