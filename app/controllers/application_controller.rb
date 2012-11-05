class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_flash_from_params
  before_filter :set_locale

protected

  def set_flash_from_params
    if params[:flash]
      params[:flash].each do |key, message|
        flash.now[key.to_sym] = message
      end
    end
  end

  def set_locale
    available_languages = Dir.glob(Rails.root + "config/locales/*.yml").map do |file|
      File.basename(file, ".yml")
    end
    puts available_languages
    parsed_locale = extract_domain
    I18n.locale = available_languages.include?(parsed_locale) ? parsed_locale : I18n.default_locale
    #I18n.locale = request.compatible_language_from(available_languages) || I18n.default_locale
    puts I18n.locale
  end

  
  def extract_domain
    domains = {"streams.local" => "enstreams",
      "hnlsirens.herokuapp.com" => "en",
      "sirens.honolulu.gov" => "en",
      "sirens.local" => "en",
      "streams.honolulu.gov" => "enstream",
      "streams.dmt.im" => "enstream"}
    parsed_locale = domains.include?(request.host) ? domains[request.host] : I18n.default_locale
  end
  
end
