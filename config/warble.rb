
  Warbler::Config.new do |config|
    config.features = %w(executable)
    
    config.dirs = %w(views public)
    config.includes = FileList["greenscreen.rb", "config.yml"]
    config.gems += ["sinatra"]
    config.gems += ["hpricot"]
    config.gems -= ["rails"]
    config.gem_dependencies = true
  end