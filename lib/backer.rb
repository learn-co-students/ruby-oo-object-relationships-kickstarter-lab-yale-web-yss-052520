class Backer

    attr_reader :name
    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def projects
        ProjectBacker.all.select{|proj|
        proj.backer == self
    }
    end

    def backed_projects
        projects.collect{|proj|
            proj.project 
        }
    end
end

# Once both classes have their attributes and readers set up, write an instance method on the Backer class 
# called back_project that takes in a Project instance. This method should create a ProjectBacker instance 
# using the provided Project instance and the current Backer instance (the instance this method was called on).
