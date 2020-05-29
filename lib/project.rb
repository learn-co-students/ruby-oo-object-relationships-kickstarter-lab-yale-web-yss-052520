require 'pry'

class Project 

attr_accessor :title 

def initialize(title)
    @title = title
end 

def add_backer(backer)
    ProjectBacker.new(self, backer)
end

def find_backer
    ProjectBacker.all.select { |project_backer| project_backer.project == self }
end 

def backers 
   self.find_backer.map {|project_backer| project_backer.backer }
end 


end 