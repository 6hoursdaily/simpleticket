spec = Gem::Specification.new do |s|
  s.name = "simpleticket"
  s.version = "0.0.1.#{Time.now.strftime "%Y%m%d%H%M"}"
  s.summary = "A super-minimal issue tracker."
  s.authors = ['Rhys Copeland']
  s.email = 'rhys@iff-transponder.co.uk'
  s.require_paths = ['lib']
    
  s.add_dependency 'rails'
  
  s.files = Dir['{lib,spec}/**/*', 'README*', 'LICENSE*']
end