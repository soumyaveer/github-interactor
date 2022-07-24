require_relative 'init'

class InspectUser
  include Interactor::Organizer
  organize FetchUser, FetchFollowers, FetchRepos, BuildResults
  before :validate_input

  def validate_input
    if context.username.nil?
      context.error = "Username can't be blank."
      context.fail!
    end
  end
end
