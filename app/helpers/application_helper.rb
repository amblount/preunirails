module ApplicationHelper
  def resource_name
    :provider
  end

  def resource
    @resource ||= Provider.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:provider]
  end
end
