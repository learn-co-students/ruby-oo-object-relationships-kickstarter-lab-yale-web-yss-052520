class Backer

    attr_reader :name

    def initialize(name)
        @name = name        
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects()
        ProjectBacker.all().map{|back_project| 
            back_project.project if back_project.backer == self
        }.compact()
    end
end