class ApiController < ApplicationController
  http_basic_authenticate_with name:ENV["API_AUTH_NAME"], password:ENV["API_AUTH_PASSWORD"], :only => [:searchContent, :register_user, :signin, :get_token]

  def search_content
    if request.post?
      if params && params[:search_string]


      end
    end
  end

  def register_user

  end
  def signin

  end
  def get_token
 
  end
private
  def check_for_valid_authtoken
    authenticate_or_request_with_http_token do |token, options|
      @user = User.where(:api_authtoken => token).first
    end
  end

end
