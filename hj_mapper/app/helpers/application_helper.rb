module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | HjMapper"      
    end
  end
end
