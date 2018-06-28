class Backer

attr_reader :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    if @backed_projects.include?(project) == false
    @backed_projects << project
    project.add_backer(self)
    end 
  end

end

# ayana = Backer.new("Ayana")
# ayana.back_project("Toothbrush")
