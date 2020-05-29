class Project

    attr_reader :title
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def projects
        projects = ProjectBacker.all.select{|proj|
        proj.project == self
    }
end
    def backers
  
        projects.collect{|proj|
            proj.backer
        }

    end
end