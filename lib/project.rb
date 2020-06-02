class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end

    def projects
        ProjectBacker.all.select {|pb| pb.project == self}
    end

    def backers
        projects.map {|p| p.backer}
    end


end
