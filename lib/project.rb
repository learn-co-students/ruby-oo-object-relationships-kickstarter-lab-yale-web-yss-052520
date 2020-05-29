class Project
    attr_accessor :title

    @@all = []

    def initialize(title)
        @title = title

        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end
    
    def projectbackers
        ProjectBacker.all.select {|pb| pb.project == self}
    end

    def backers
        projectbackers.map {|pb| pb.backer }.uniq
    end
end