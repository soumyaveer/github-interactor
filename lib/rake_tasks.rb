desc 'Get user details by passing one argument which is a github username.'
  task :github_user do
    ARGV.each { |a| task a.to_sym do ; end }

    puts "Printing details of github user: #{ARGV[1]}"
    sh "bundle exec ruby ./lib/get_user_details.rb  #{ARGV[1]}"
  end
