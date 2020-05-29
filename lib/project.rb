class Project

    attr_accessor :title
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end

    def p
        ProjectBacker.all.select{|projectbacker| projectbacker.project == self}
    end

    def backers
        p.map {|pb| pb.backer}
    end
end