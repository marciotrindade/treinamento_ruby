class AppConfig < Settingslogic
  source "config/config.yml"
  namespace ENV['RUBY_ENV'] || 'production'

  def self.login_password
    "#{login} #{password}"
  end
end
