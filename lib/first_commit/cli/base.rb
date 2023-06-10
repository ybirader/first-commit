require 'thor'
require 'dotenv'
require 'octokit'

module FirstCommit::Cli
  class Base < Thor
    attr_reader :client

    def initialize(*)
      super
      load_envs
      initialize_octokit_client
    end

    private

      def load_envs
        Dotenv.load
      end

      def initialize_octokit_client
        @client = Octokit::Client.new(access_token: ENV['GITHUB_TOKEN'], per_page: 1)
      end
  end
end
