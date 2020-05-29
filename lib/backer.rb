class Backer
    attr_accessor :name
    # @@all = []
    def initialize(name)
        @name=name
        # @@all << self
    end
    def back_project(project)
        ProjectBacker.new(project, self)
    end
    def get_joiner_array
        ProjectBacker.all.select{|project_backer| project_backer.backer==self}
    end
    def backed_projects
        get_joiner_array.map{|project_backer| project_backer.project}.uniq
    end
    def self.all
        @@all
    end
end