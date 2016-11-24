class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  # def devise_parameter_sanitizer
  #   if resource_class == Gaurdian
  #     Gaurdian::ParameterSanitizer.new(Gaurdian, :gaurdian, params)
  #   else
  #     super # Use the default one
  #   end
  # end

end
