class Project
    attr_accessor :title
    # @@all = []
    def initialize(title)
        @title = title
        # @@all << self
    end
    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end
    def get_joiner_array
        ProjectBacker.all.select{|project_backer| project_backer.project==self}
    end
    def backers
        get_joiner_array.map{|project_backer| project_backer.backer}.uniq
    end
    def self.all
        @@all
    end
end