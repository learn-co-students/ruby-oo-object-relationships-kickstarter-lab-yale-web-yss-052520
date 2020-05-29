require 'pry'
class Project 
    def initialize (title)
        @title = title 
    end 
    attr_accessor :title 
    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end 
    def backers 
        pair_list = ProjectBacker.all.select {|projback| projback.project == self }
        pair_list.map {|pair| pair.backer}
    end 
end 

