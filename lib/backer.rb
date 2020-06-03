class Backer

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def back_project(project)
    ProjectBacker.new(project, self)
  end

  def backed_projects
    pbs = ProjectBacker.all.select { |pb| pb.backer == self }
    pbs.map { |pb| pb.project }
  end

end
