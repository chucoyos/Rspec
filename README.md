gem install rspec
rspec --version
rspec --init

rspec --help
rspec # run all tests
rspec spec/awesome_spec.rb # run a specific test
rspec spec/awesome_spec.rb:5 # run a specific test line
rspec spec/awesome_spec.rb:5:3 # run a specific test line and column
rspec spec/awesome_spec.rb:5:3 --format documentation # run a specific test line and column and show the documentation
rspec spec/awesome_spec.rb:5:3 --format documentation --color # run a specific test line and column and show the documentation with color
rspec spec/awesome_spec.rb:5:3 --format documentation --color --profile # run a specific test line and column and show the documentation with color and profile