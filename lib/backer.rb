class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project,self)
    end

    def backers
        ProjectBacker.all.select {|pb| pb.backer == self}
    end

    def backed_projects
        backers.map {|b| b.project}
    end


end
