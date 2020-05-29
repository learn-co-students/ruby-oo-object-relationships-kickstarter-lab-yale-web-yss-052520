class Project
    attr_accessor :title

    @@all  = []

    def initialize(title)
        @title = title
        save
    end

    def save
        self.class.all << self
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        projectbackers.map {|pb| pb.backer}
    end

    def self.all
        @@all
    end

    private

    def projectbackers
        ProjectBacker.all.select {|pb| pb.project == self}
    end
end