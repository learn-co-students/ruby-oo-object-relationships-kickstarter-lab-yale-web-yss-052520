require_relative "project.rb"
require_relative "project_backer.rb"
require_relative "backer.rb"

class ProjectBacker
    attr_accessor :project, :backer
  
    @@all = []
  
    def initialize(project, backer)
      @project = project
      @backer = backer
      save #saves down the new instance
    end
  
    def save
      @@all << self #pushes save (all instances of projectbacker itself) into all
    end
  
    def self.all
      @@all
    end
  end