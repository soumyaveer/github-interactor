require 'rubygems'
require 'bundler/setup'
require 'pry'
require 'ap'
Bundler.require(:default)

require_relative 'github_api_client'
require_relative 'fetch_user'
require_relative 'fetch_followers'
require_relative 'fetch_repos'
require_relative 'build_results'
