class Project
  attr_accessor :title, :backers
  
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def add_backer(project)
    @backer << self 
    project.backers(self) unless project.add_backer.include?(self)
  end
end