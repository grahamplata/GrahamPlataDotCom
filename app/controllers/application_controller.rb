class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def home
    @posts = Post.all.limit(3).order("created_at desc")
    @projects = Project.all.limit(2).order("created_at desc")
  end

end
