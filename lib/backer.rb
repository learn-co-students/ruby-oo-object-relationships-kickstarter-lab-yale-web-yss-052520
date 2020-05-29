class Backer
    attr_accessor :name

    @@all  = []

    def initialize(name)
        @name = name
        save
    end

    def save
        self.class.all << self
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        projectbackers.map {|pb| pb.project}
    end

    def self.all
        @@all
    end

    private

    def projectbackers
        ProjectBacker.all.select {|pb| pb.backer == self}
    end
end