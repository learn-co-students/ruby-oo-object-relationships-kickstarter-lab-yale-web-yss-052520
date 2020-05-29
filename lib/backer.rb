class Backer

    @@all = []

    attr_accessor :name 

    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all 
    end 

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects_helper 
        ProjectBacker.all.select {|instance| instance.backer == self}
    end

    def backed_projects
        backed_projects_helper.map {|each| each.project}
    end
end