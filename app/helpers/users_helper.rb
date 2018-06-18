module UsersHelper

  def get_expiring_alert_color(expires_in)
    case expires_in
    when 6.days..7.days
      'alert-success'
    when 5.days..6.days
      'alert-info'
    when 3.days..5.days
      'alert-warning'
    else
      'alert-danger'
    end
  end
end
