class Backer
    attr_reader :name
    def initialize(name)
        @name = name
    end
    
    def back_project(project)
        ProjectBacker.new(project, self)
    end 

    def backed_projects
        ProjectBacker.all.select{|info| info.backer == self}.map{|info|info.project}
    end
end
