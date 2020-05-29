class Project

    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        projInfo = ProjectBacker.all.select {|info_pair| info_pair.project == self}
        projInfo.map {|info_pair| info_pair.backer}
    end


end
