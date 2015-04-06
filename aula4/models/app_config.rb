class AppConfig < Settingslogic
  source "config/config.yml"
  namespace ENV['RUBY_ENV'] || 'development'
  
  def self.login_pass
    "#{login} #{password}"
  end
end

class AndreLucasConfig < Settingslogic
  source "config/AndreLucasconfig.yml"
  namespace ENV['RUBY_ENV'] || 'development'
end
