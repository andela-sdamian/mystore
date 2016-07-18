module ApplicationHelper
  def sortable(column, title = nil)
    title ||= column.titleize 
    direction = if column == params[:sort] && params[:direction] == "asc"
                  "desc"
                else 
                  "asc"
                end 
                
    link_to title, sort: column, direction: direction  
  end 
end
