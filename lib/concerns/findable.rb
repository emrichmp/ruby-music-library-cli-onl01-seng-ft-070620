module Concerns::Findable
  def find_by_name(name)
    self.all.detect do |i|
      i.name == name
    end
  end
  
  
  
end