class ApplicationController < ActionController::Base
#prevention of CSRF 
protect_from_forgery with: :exception
#add session cookie here with form_authenticity_token and set a before_action to put a CSRF token in the cookie



end
