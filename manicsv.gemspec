
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "manicsv/version"

Gem::Specification.new do |spec|
  spec.name          = "manicsv"
  spec.version       = Manicsv::VERSION
  spec.authors       = ["jvtrudel"]
  spec.email         = ["jvtrudel@gmx.com"]

  spec.summary       = %q{A semantic helper library to manipulate, transform and merge csv sheets.  }
  spec.description   = %q{Most of our data describe more or less the same real world objects. And csv or any other tabular formats is a very common, convenient and efficient trick we use daily. But then what? If you are curious and keep track of things, you probably have a messy computer full of data, Excel files, lists and tables. Manicvs is an attempt to provide useful methods to sort, combine, add data and manipulate in any useful mean your collection of csv files using command line interface or as a library.}

  spec.homepage      = "https://github.com/jvtrudel/manicsv"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
