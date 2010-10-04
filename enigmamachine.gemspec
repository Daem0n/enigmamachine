# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{enigmamachine}
  s.version = "0.4.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dave Hrycyszyn"]
  s.date = %q{2010-10-05}
  s.default_executable = %q{enigmamachine}
  s.description = %q{A RESTful video encoder which you can use as either a front-end to ffmpeg or headless on a server.}
  s.email = %q{dave@caprica}
  s.executables = ["enigmamachine"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "bin/enigmamachine",
     "enigmamachine.gemspec",
     "lib/enigmamachine.rb",
     "lib/enigmamachine.sqlite3",
     "lib/enigmamachine/config.ru",
     "lib/enigmamachine/encoding_queue.rb",
     "lib/enigmamachine/models/encoder.rb",
     "lib/enigmamachine/models/encoding_task.rb",
     "lib/enigmamachine/models/video.rb",
     "lib/enigmamachine/public/default.css",
     "lib/enigmamachine/public/images/Enigma-logo.jpg",
     "lib/enigmamachine/public/images/bg01.jpg",
     "lib/enigmamachine/public/images/bg02.jpg",
     "lib/enigmamachine/public/images/bg03.jpg",
     "lib/enigmamachine/public/images/bg04.jpg",
     "lib/enigmamachine/public/images/img02.gif",
     "lib/enigmamachine/public/images/img03.gif",
     "lib/enigmamachine/public/images/img04.gif",
     "lib/enigmamachine/public/images/img05.gif",
     "lib/enigmamachine/public/images/img06.jpg",
     "lib/enigmamachine/public/images/spacer.gif",
     "lib/enigmamachine/views/encoders/edit.html.erb",
     "lib/enigmamachine/views/encoders/encoder.html.erb",
     "lib/enigmamachine/views/encoders/encoding_task.html.erb",
     "lib/enigmamachine/views/encoders/form.html.erb",
     "lib/enigmamachine/views/encoders/index.html.erb",
     "lib/enigmamachine/views/encoders/new.html.erb",
     "lib/enigmamachine/views/encoders/show.html.erb",
     "lib/enigmamachine/views/encoding_tasks/edit.html.erb",
     "lib/enigmamachine/views/encoding_tasks/form.html.erb",
     "lib/enigmamachine/views/encoding_tasks/new.html.erb",
     "lib/enigmamachine/views/index.html.erb",
     "lib/enigmamachine/views/layout.html.erb",
     "lib/enigmamachine/views/videos/form.html.erb",
     "lib/enigmamachine/views/videos/index.html.erb",
     "lib/enigmamachine/views/videos/new.html.erb",
     "lib/enigmamachine/views/videos/video.html.erb",
     "lib/ext/array_ext.rb",
     "lib/ext/partials.rb",
     "lib/generators/config.yml",
     "test/helper.rb",
     "test/support/afile.mpg",
     "test/support/blueprints.rb",
     "test/test_encoder.rb",
     "test/test_encoding_queue.rb",
     "test/test_enigmamachine.rb",
     "test/test_video.rb"
  ]
  s.homepage = %q{http://github.com/futurechimp/enigmamachine}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A RESTful video encoder.}
  s.test_files = [
    "test/test_encoding_queue.rb",
     "test/support/blueprints.rb",
     "test/test_encoder.rb",
     "test/helper.rb",
     "test/test_video.rb",
     "test/test_enigmamachine.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<thoughtbot-shoulda>, [">= 0"])
      s.add_runtime_dependency(%q<data_mapper>, [">= 1.0.0"])
      s.add_runtime_dependency(%q<eventmachine>, [">= 0.12.10"])
      s.add_runtime_dependency(%q<dm-sqlite-adapter>, [">= 1.0.0"])
      s.add_runtime_dependency(%q<rack-flash>, [">= 0"])
      s.add_runtime_dependency(%q<ruby-debug>, [">= 0"])
      s.add_runtime_dependency(%q<sinatra>, [">= 1.0.0"])
      s.add_runtime_dependency(%q<sinatra-respond_to>, [">= 0.2.0"])
      s.add_runtime_dependency(%q<json_pure>, [">= 1.4.6"])
      s.add_runtime_dependency(%q<streamio-ffmpeg>, [">= 0.7.3"])
      s.add_runtime_dependency(%q<thin>, [">= 0"])
    else
      s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
      s.add_dependency(%q<data_mapper>, [">= 1.0.0"])
      s.add_dependency(%q<eventmachine>, [">= 0.12.10"])
      s.add_dependency(%q<dm-sqlite-adapter>, [">= 1.0.0"])
      s.add_dependency(%q<rack-flash>, [">= 0"])
      s.add_dependency(%q<ruby-debug>, [">= 0"])
      s.add_dependency(%q<sinatra>, [">= 1.0.0"])
      s.add_dependency(%q<sinatra-respond_to>, [">= 0.2.0"])
      s.add_dependency(%q<json_pure>, [">= 1.4.6"])
      s.add_dependency(%q<streamio-ffmpeg>, [">= 0.7.3"])
      s.add_dependency(%q<thin>, [">= 0"])
    end
  else
    s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
    s.add_dependency(%q<data_mapper>, [">= 1.0.0"])
    s.add_dependency(%q<eventmachine>, [">= 0.12.10"])
    s.add_dependency(%q<dm-sqlite-adapter>, [">= 1.0.0"])
    s.add_dependency(%q<rack-flash>, [">= 0"])
    s.add_dependency(%q<ruby-debug>, [">= 0"])
    s.add_dependency(%q<sinatra>, [">= 1.0.0"])
    s.add_dependency(%q<sinatra-respond_to>, [">= 0.2.0"])
    s.add_dependency(%q<json_pure>, [">= 1.4.6"])
    s.add_dependency(%q<streamio-ffmpeg>, [">= 0.7.3"])
    s.add_dependency(%q<thin>, [">= 0"])
  end
end

