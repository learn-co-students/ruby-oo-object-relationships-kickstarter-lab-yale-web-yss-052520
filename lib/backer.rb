class Backer 
    def initialize(name)
        @name = name 
    end 
    attr_accessor :name 
    def back_project(project)
        ProjectBacker.new(project,self)
    end 
    def backed_projects 
        pair_list = ProjectBacker.all.select {|projback| projback.backer == self }
        pair_list.map {|pair| pair.project}
    end 
end 