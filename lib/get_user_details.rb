require_relative 'init'
require_relative 'inspect_user'

context = InspectUser.call(username: ARGV[0])

if context.success?
  ap context.user_details
else
  ap "Failed with error: #{context.error}"
end
