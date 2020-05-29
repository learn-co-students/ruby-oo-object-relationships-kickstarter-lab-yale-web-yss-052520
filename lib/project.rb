class Project

    attr_reader :title 

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def almost_backers
        ProjectBacker.all.select {|match| match.project == self}
    end

    def backers 
        almost_backers.map {|match| match.backer}
    end
end