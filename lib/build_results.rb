class BuildResults
  include Interactor

  def call
    context.user_details = {
      user: context.user,
      followers: context.followers,
      repos: context.repos
    }
  end
end
