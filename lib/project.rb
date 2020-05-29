class Project 
    attr_accessor :title 
    @@all = []

    def initialize(title)
        @title = title 
        @@all << self 
    end 
    
    def add_backer(backer) 
        pb = ProjectBacker.new(self, backer) 
    end 

    def backers
        pbs = ProjectBacker.all.select {|pb| pb.project == self}
        pbs.map do |elem|
            elem.backer 
        end 
    end 
end 