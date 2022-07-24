# https://api.github.com/users/soumyaveer
class FetchUser
  include Interactor

  def call
    client = GithubApiClient.new
    user = client.user(context.username)

    if user.response.code == "200"
      user = user.parsed_response
      return context.user = user
    else
      context.error = user.response.message
      context.fail!
    end
  end
end

