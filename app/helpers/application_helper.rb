module ApplicationHelper

  def logged_in?
    current_user.present?
  end

  def current_user?(user)
    user == current_user
  end

  def user_admin?
    return true if current_user.admin == true
  end
end
