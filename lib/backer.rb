class Backer

    attr_reader :name

    def initialize(name)
        @name = name 
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def almost_backed_projects
        ProjectBacker.all.select {|match| match.backer == self }
    end

    def backed_projects
        almost_backed_projects.map {|match| match.project}
    end

end