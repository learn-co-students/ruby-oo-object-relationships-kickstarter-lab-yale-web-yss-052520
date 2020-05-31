require_relative "project.rb"
require_relative "project_backer.rb"
require_relative "backer.rb"
require 'pry'

class Backer
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def back_project(project)
    ProjectBacker.new(project, self) 
    #takes the input of a project and creates a new Project Backer with the input of project and itself
  end

  def backed_projects
    project_backers = ProjectBacker.all.select do |pb|
      pb.backer == self
      #selects all instances of ProjectBacker class such that its backer is self, the specified backer
    end
    project_backers.map do |pb|
      pb.project
      #iterates over all project backers for the given instance of backer and returns an array of the projects associated with that backer
    end
  end
end
