class Project

    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        instance = ProjectBacker.all.select {|instance| instance.project == self}
        instance.map {|instance| instance.backer}
    end
end