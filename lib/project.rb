class Project
    @@all = []
    def self.all
        @@all
    end

    attr_accessor :title

    def initialize(title)
        @title = title
        self.class.all << self
    end    

    def add_backer(backer)
        new_connection = ProjectBacker.new(self, backer)
    end

    def connections
        ProjectBacker.all.select do |connection|
            connection.project == self
        end
    end

    def backers
        connections.map do |connection|
            connection.backer
        end
    end
end