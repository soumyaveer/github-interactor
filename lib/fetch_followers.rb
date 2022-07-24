# https://api.github.com/users/soumyaveer/followers
class FetchFollowers
  include Interactor

  def call
    client = GithubApiClient.new
    followers = client.followers(context.username)
    
    if followers.response.code == "200"
      followers = followers.parsed_response
      return context.followers = followers
    else
      context.error = followers.response.message
      context.fail!
    end
  end
end
