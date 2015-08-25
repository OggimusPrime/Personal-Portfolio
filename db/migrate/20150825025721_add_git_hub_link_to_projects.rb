class AddGitHubLinkToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :git_hub_link, :string
  end
end
