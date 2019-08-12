class User 
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

     def self.all 
        @@all 
    end

     def create_project(name,goal)
        Project.new(name, goal, self)
    end
    def create_pledge(project,amount)
        Pledge.new(self, project, amount)
    end

     def self.highest_pledge
        Pledge.all.max_by {|pledge| pledge.amount}.user
    end

     def self.multi_pledger
        multi_pledges = {}
        Pledge.all.each do |pledge|
            if multi_pledges[pledge.user]
                multi_pledges[pledge.user] += 1
            else
                multi_pledges[pledge.user] = 1
            end
        end
        pledge_array = multi_pledges.find_all{|user, pledge| pledge > 1}
        pledge_array.map {|pledge| pledge[0] }
    end

     def self.project_creator
        Project.all.map {|project|project.creator}.uniq
    end
end 