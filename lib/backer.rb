class Backer
    @@all = []
    def self.all
        @@all
    end

    attr_accessor :name

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def back_project(project)
        new_connection = ProjectBacker.new(project, self)
    end

    def connections
        ProjectBacker.all.select do |connection|
            connection.backer == self
        end
    end

    def backed_projects
        connections.map do |connection|
            connection.project
        end
    end
end