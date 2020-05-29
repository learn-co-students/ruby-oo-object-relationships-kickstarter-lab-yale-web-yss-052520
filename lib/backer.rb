require 'pry'

class Backer 

    attr_accessor :name 

    def initialize(name)
        @name = name
    end 

    def back_project(project)
        ProjectBacker.new(project, self)
    end
    
    def find_project 
        ProjectBacker.all.select { |project_backer| project_backer.backer == self }
    end 

    def backed_projects
        self.find_project.map { |project_backer| project_backer.project }
    end


end 



