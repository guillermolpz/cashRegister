module ApplicationHelper

  ## Traducir el rol del usuario
  def traduceRol (rol)
    return case rol
      when 1 then "Administrador"
      when 2 then "Cajero"
    end
  end

end
