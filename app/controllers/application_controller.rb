class ApplicationController < ActionController::Base
  def hello
    redirect_to "static_pages/hello.html.erb"
  end
end
