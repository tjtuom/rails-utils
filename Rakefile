
begin
  require 'bones'
rescue LoadError
  abort '### Please install the "bones" gem ###'
end

task :default => 'spec:run'
task 'gem:release' => 'spec:run'

Bones {
  name  'rails-utils'
  authors  'Toni Tuominen'
  email    'toni@piranhadigital.fi'
  url      'http://github.com/tjtuom/rails-utils'

  ignore_file '.gitignore'
}

