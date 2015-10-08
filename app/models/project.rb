class Project < ActiveRecord::Base
  belongs_to :user
  has_many :skills

  default_scope { order('project_date DESC') }
end
