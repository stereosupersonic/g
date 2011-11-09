Gem::Specification.new do |s|
  s.name = 'g'
  s.version = '1.3.1'
  s.summary = "The Kernel.g that works like Kernel.p on growl :)"
  s.description = "The Kernel.g that works like Kernel.p on growl :)"
  s.files = %w( lib/g.rb
                spec/g_spec.rb
                README.markdown
                Rakefile )
  s.add_dependency("ruby_gntp", ">= 0.3.4")
  s.author = 'stereosupersonci'
  s.email = 'michael@deimel.de'
  s.homepage = 'https://github.com/stereosupersonic/g'
  s.rubyforge_project = 'kernelg'
  s.has_rdoc = false
end
