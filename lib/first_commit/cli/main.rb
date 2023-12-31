class FirstCommit::Cli::Main < FirstCommit::Cli::Base
  desc "init [TOKEN]", "Create env stub with Github credentials"
  def init(token)
    File.write(File.expand_path('.env'), "GITHUB_TOKEN=#{token}")
  end

  desc "get ", "Outputs URL of first commit for public Github repo"
  def get(project_name)
    puts "Please run first-commit init to set your access token" unless ENV['GITHUB_TOKEN']

    unless valid_project?(project_name)
      return puts "This is not a valid project"
    end

    begin
      last_commit(project_name)
    rescue Octokit::Unauthorized
       puts "Your auth credentials are wrong"
    end
  end

  private

    def valid_project? name
      name.split("/").size == 2
    end

    def last_commit(project_name)
        commits = client.commits(project_name)
        if empty_project?(commits)
          puts "This project has no commits."
        end

        if pages_remaining?
          commits.concat(client.get(client.last_response.rels[:last].href))
        end

        puts commits.last.html_url
    end

    def empty_project?(commits)
      commits.size == 0
    end

    def pages_remaining?
      client.last_response.rels.key?(:next)
    end
end
