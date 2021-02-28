module ApplicationHelper

  def flash_class(level)
    bootstrap_alert_class = {
      "success" => "alert-success",
      "error" => "alert-danger",
      "notice" => "alert-info",
      "alert" => "alert-danger",
      "warn" => "alert-warning"
    }
    bootstrap_alert_class[level]
  end

  def active_class(path)
    if request.path == path
      return 'active'
    else
      return ''
    end
  end

end
