module ApplicationHelper

  def is_active? route
    puts params[:controller]
    return true
    params[:controller].to_s == route
  end

  def active_class
    params[:controller].to_s == route
  end

  def left_menu_content
    puts params[:controller]
    [
      {
        path: root_path,
        title: 'Dashboard',
        active?: params[:controller].to_s == 'application'
      },
      {
          path: users_path,
          title: 'Users',
          active?: params[:controller].to_s == 'users'
      }

    ].to_a
  end




end
