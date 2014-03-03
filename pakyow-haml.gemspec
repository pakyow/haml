GEM_NAME = 'pakyow-haml'

version = File.read(File.join(File.expand_path("../VERSION", __FILE__))).strip
presenter_path = File.exists?(GEM_NAME) ? GEM_NAME : '.'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = GEM_NAME
  s.version     = version
  s.summary     = 'Pakyow view processor for HAML.'
  s.description = 'A view processor for Pakyow that automatically converts HAML views with .haml extension to HTML.'
  s.required_ruby_version = '>= 1.9.3'

  s.authors           = ['Bryan Powell']
  s.email             = 'bryan@metabahn.com'
  s.homepage          = 'http://pakyow.com'

  s.files        = Dir[
                        File.join(presenter_path, 'CHANGES'),
                        File.join(presenter_path, 'README'),
                        File.join(presenter_path, 'MIT-LICENSE'),
                        File.join(presenter_path, 'lib','**','*')
                      ]

  s.require_path = File.join(presenter_path, 'lib')

  s.add_dependency('pakyow-core', '~> 0.8')
  s.add_dependency('pakyow-presenter', '~> 0.8')
  s.add_dependency('haml', '~> 4.0')
end
