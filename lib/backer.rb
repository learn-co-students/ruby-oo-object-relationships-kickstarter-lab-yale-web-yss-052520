require 'pry'

class Backer

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def back_project(project)
    ProjectBacker.new(project, self)
  end

  def backed_projects
    pb = ProjectBacker.all.select{|pb| pb.backer == self}
    #binding.pry
    pb.map{|pb| pb.project}
  end


end