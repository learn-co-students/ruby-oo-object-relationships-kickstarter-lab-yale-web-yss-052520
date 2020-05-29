class Project

    @@all = []

    attr_accessor :title 
    
    def initialize(title)
        @title = title
        @@all << self
    end 

    def self.all
        @@all 
    end 

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end 

    def backers_helper
        ProjectBacker.all.select {|instance| instance.project == self}
    end

    def backers 
        backers_helper.map {|project| project.backer}
    end
end