class GithubApiClient
  include HTTParty
  base_uri "https://api.github.com/users"

  def followers(username)
    self.class.get("/#{username}/followers")
  end

  def repos(username)
    self.class.get("/#{username}/repos")
  end

  def user(username)
    self.class.get("/#{username}")
  end
end
