class Backer
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def projectbackers
        ProjectBacker.all.select {|pb| pb.backer == self}
    end

    def backed_projects
        projectbackers.map {|pb| pb.project }.uniq
    end
end