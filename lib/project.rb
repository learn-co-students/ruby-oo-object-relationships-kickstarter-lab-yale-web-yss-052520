class Project

  attr_reader :title

  @@all = []

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

  def backers
    pbs = ProjectBacker.all.select { |pb| pb.project == self }
    pbs.map { |pb| pb.backer }
  end

end
