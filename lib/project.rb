# A project has many backers
class Project
    attr_reader :title 

    def initialize(title)
        @title = title 
    end 

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end 

    #Returns all ProjectBacker instances associated with this project.
    def backer_projects
        ProjectBacker.all.select {|proj_backer| proj_backer.project == self}
    end 

    # Takes all ProjectBacker instances associated with this project and obtains all their backers
    def backers 
        self.backer_projects.map {|proj_backer| proj_backer.backer}
    end
end