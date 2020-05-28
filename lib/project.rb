class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers()
        ProjectBacker.all().map{|back_project| 
            back_project.backer if back_project.project == self
        }.compact()
    end
end