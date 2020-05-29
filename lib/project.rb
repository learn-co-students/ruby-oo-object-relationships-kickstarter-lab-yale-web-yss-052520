class Project
    attr_accessor :title
    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

	def backers
		result = ProjectBacker.all.select {|project_backer| project_backer.project == self}
		result.map {|pb| pb.backer}
	end


end