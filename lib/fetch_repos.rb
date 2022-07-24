# https://api.github.com/users/soumyaveer/repos
class FetchRepos
  include Interactor

  def call
    client = GithubApiClient.new
    repos = client.repos(context.username)
    
    if repos.response.code == "200"
      repos = repos.parsed_response
      return context.repos = repos
    else
      context.error = repos.response.message
      context.fail!
    end
  end
end
