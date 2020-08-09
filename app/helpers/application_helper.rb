module ApplicationHelper
  def user_course_status(status)
    case status
    when "pending"
      "¡Empezá este curso!"
    when "questions_completed"
      "Solo te falta el proyecto final, ¿qué esperás?"
    when "project_completed"
      "Esperando feedback del equipo."
    when "finished"
      "Descargar certificado."
    else
      ""
    end
  end
end
