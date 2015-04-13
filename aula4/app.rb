# usando o bundler maroto
Bundler.require

Dir[File.dirname(__FILE__) + '/models/**/*.rb'].each { |f| require f }
