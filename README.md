# README for Book Reviews Online

This application creates a simple web site that allows users to read and write book reviews. Administrative tasks
such as deleting books or reviews are left to an administrative user. A user can only be made an administrator by
a direct database update. This pattern is common for security issues.

To install the program simply download the Git repository and run bundle install. You may need to preface your rails
and rake commands with "bundle exec" depending on your software versions. After cloning the repository run "bundle exec
rake db:migrate" to create the database. Then run "bundle exec rails server" to start the program. You will then be
able to log into your local server at port 3000.

This application was created using Ruby version 2.2.2, although it should work on later versions. Devise is utilized for
authentication along with Omniauth to allow signin using Facebook or LinkedIn.

A sample seed file can be installed by running "bundle rake db:seed". The db/seeds.rb file can be modified for your needs.
Things you may want to cover:

A number of tests were created during development using the RSpec domain specific language. You can run the tests with
"bundle exec rspec". The tests are located under the spec directory and can be modified for your purposes.