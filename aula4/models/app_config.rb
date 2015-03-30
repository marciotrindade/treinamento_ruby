class AppConfig < Settingslogic
  source "config/config.yml"
  namespace ENV['RUBY_ENV'] || 'production'
end
