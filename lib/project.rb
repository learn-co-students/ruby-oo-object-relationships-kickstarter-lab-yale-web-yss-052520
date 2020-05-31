require_relative "project.rb"
require_relative "project_backer.rb"
require_relative "backer.rb"


class Project
    attr_reader :title
  
    def initialize(title)
      @title = title
    end
  
    def add_backer(backer)
      ProjectBacker.new(self, backer)
    end
  
    def backers
      project_backers = ProjectBacker.all.select do |pb| 
        pb.project == self
        #interates over all instances of ProjectBacker class to find instances where its project is self
      end
      project_backers.map do |pb|
        pb.backer
        #iterates over project backer instances with this specific project to return an array of backers associated with project instance
      end
    end
  end