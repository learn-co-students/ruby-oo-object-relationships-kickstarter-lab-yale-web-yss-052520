require 'pry'

class Backer
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

	def backed_projects
		result = ProjectBacker.all.select {|project_backer| project_backer.backer == self}
		result.map {|pb| pb.project}
	end

end

