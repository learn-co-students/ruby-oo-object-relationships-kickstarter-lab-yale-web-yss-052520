class Backer 
    attr_accessor :name 
    @@all = []

    def initialize(name)
        @name = name 
        @@all << self
    end 

    def back_project(project)
        pb = ProjectBacker.new(project, self)
    end 
    
    def backed_projects
        pbs = ProjectBacker.all.select {|proj| proj.backer == self}
        pbs.map do |elel|
            elel.project
        end
    end 
     

end 