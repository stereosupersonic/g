require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "g"
    gem.summary = %Q{g is like p}
    gem.description = %Q{The Kernel.g that works like Kernel.p on growl :)}
    gem.email = "michael@deimel.de"
    gem.homepage = "http://github.com/stereosupersonic/g"
    gem.authors = ["stereosupersonic"]
    gem.add_development_dependency "rspec", ">= 0"
    gem.add_dependency "ruby_gntp", ">= 0.3.4"
  end
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

require 'spec/rake/spectask'
desc 'run all specs'
Spec::Rake::SpecTask.new do |t|
  t.spec_files = FileList['spec/**/*_spec.rb']
  t.spec_opts = ['-c']
end
