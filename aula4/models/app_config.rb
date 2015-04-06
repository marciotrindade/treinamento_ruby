class AppConfig < Settingslogic
  source "config/config.yml"
  namespace ENV['RUBY_ENV'] || 'production'
<<<<<<< HEAD
  
  def self.login_pass
    "#{login} #{password}"
  end
end

class AndreLucasConfig < Settingslogic
  source "config/AndreLucasconfig.yml"
  namespace ENV['RUBY_ENV'] || 'production'
=======

  def self.login_password
    "#{login} #{password}"
  end
>>>>>>> 9900d47854b5637dd5c919e2ae8f1acd9fbb75ee
end
