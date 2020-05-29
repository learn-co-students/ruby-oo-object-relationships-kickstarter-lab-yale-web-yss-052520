class Backer

    attr_accessor :name
    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def projects
        ProjectBacker.all.select{|projectbacker| projectbacker.backer == self}
    end

    def backed_projects
        projects.map {|p| p.project}
    end
end