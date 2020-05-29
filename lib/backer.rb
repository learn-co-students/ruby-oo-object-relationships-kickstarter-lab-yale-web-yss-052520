class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end    

    def back_project(project)
        ProjectBacker.new(project, self)
    end
    
    def backed_projects
        backers = ProjectBacker.all.select {|b| b.backer == self}
        backers.map {|b| b.project}
    end     

end