# A project can have many backers
# and a backer can back many projects.
# Therefore, this is not a one-many relationship
# but a many-many relationship. Therefore,
# we will need a joiner class.
class Backer
    attr_reader :name 

    def initialize(name)
        @name = name 
    end 

    def back_project(project)
        ProjectBacker.new(project, self)
    end 

    # Return all ProjectBacker instances backed by this backer
    def projects 
        ProjectBacker.all.select {|project| project.backer == self}
    end 

    # Takes ProjectBacker instances backed by self and obtains their project instances
    def backed_projects
        self.projects.map {|back_project| back_project.project}
    end 


end 