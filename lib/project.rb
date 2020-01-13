class Project
  attr_accessor :title, :backers
  
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def add_backer(backer)
    @backer << backer
    backer.backers(self) unless backer.add_backer.include?(self)
  end
end